using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using PagedList;
using UserSite.Models;

namespace UserSite.Controllers
{
    public class HomeController : Controller
    {
        private readonly ShoppingEntities _productEntities = new ShoppingEntities();                

        // GET /Home/Index.
        public ActionResult Index()
        {                        
            // Get 6 products with highest viewed.
            ViewBag.SixFeaturedProducts = _productEntities.GetSixFeaturedProduct().ToList();
            // Get 3 latest products.
            ViewBag.ThreeNewestProducts = _productEntities.GetThreeNewestProduct().ToList();
            return View(_productEntities.Categories.ToList());                        
        }

        // GET /Home/Cart.
        public ActionResult Cart(int page = 1)
        {
            // Create session to store cart items.
            if (Session["Cart"] == null)
            {
                Session["Cart"] = new List<CartModels>();
            }

            var cart = (List<CartModels>)Session["Cart"];
            // Display the cart in pagination form.
            return View(cart.OrderBy(c => c.ProductName).ToPagedList(page, 4));
        }
        
        // GET /Home/Summary.
        public ActionResult Summary(int page = 1)
        {
            // Create session to store cart items.
            if (Session["Cart"] == null)
            {
                Session["Cart"] = new List<CartModels>();
            }

            ViewBag.Summary = (List<CartModels>)Session["Cart"];
            Session.Remove("Cart");
            // Display the cart in pagination form.
            return View();
        }
        
        // GET /Home/Checkout.
        [Authorize]
        public ActionResult CheckOut()
        {
            // Create session to store cart items.
            if (Session["Cart"] == null)
            {
                Session["Cart"] = new List<CartModels>();
            }
                        
            return View();
        }

        // POST /Home/Checkout.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CheckOut([Bind(Include = "ShippingAddress,PhoneNumber,City,Country,CardNum,ExpiredDate,CVV")] CheckOut checkOut)
        {
            if (!ModelState.IsValid) return View(checkOut);
            // Add a new item to CheckOut.
            foreach (var item in (List<CartModels>)Session["Cart"])
            {
                checkOut.UserEmail = User.Identity.GetUserName();
                checkOut.ProductID = item.ProductId;
                checkOut.Quantity = item.Quantity;
                checkOut.TotalPrice = item.Quantity*item.Price;
                checkOut.DateOrdered = DateTime.Now;

                _productEntities.CheckOuts.Add(checkOut);
                _productEntities.SaveChanges();
            }

            // Go to summary page.
            return RedirectToAction("Summary");
        }       
    }
}