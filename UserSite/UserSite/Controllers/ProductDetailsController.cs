using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using UserSite;
using UserSite.Models;

namespace UserSite.Controllers
{
    public class ProductDetailsController : Controller
    {
        private readonly ShoppingEntities _productEtities = new ShoppingEntities();

        // GET: /ProductDetails/Details/5
        public ActionResult Index(int? id)
        {            
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            
            var product = _productEtities.Products.Find(id);            
            if (product == null)
            {
                return HttpNotFound();
            }

            // Plus 1 to number of views of the product.                        
            _productEtities.AddView(id);
            ViewBag.Product = product;
            // Get all available categories.
            ViewBag.Category = _productEtities.Categories.ToList();           
            return View(new CartModels(1));
        }

        // POST /Home/Cart.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(string image, int productId, string title, decimal price, [Bind(Include = "Quantity")] CartModels cart)
        {
            if (ModelState.IsValid)
            {
                // Create session to store cart items.
                if (Session["Cart"] == null)
                {
                    Session["Cart"] = new List<CartModels>();
                }

                var c = (List<CartModels>)Session["Cart"];
                var newItem = new CartModels(image, productId, title, cart.Quantity, price);
                // Check if new item is available in the cart.
                var findItem = c.Find(a => a.ProductId.Equals(newItem.ProductId));

                if (findItem == null)
                {
                    // Create new item.
                    c.Add(newItem);
                }
                else
                {
                    // Add the new quantity to the current one.
                    findItem.Quantity += newItem.Quantity;
                    findItem.Total = findItem.Quantity * findItem.Price;
                }
                return RedirectToAction("Cart", "Home");
            }
            ViewBag.Product = _productEtities.Products.Find(productId); ;
            ViewBag.Category = _productEtities.Categories.ToList();
            return View(cart);
        }

        // Delete an item from cart.
        public ActionResult DeleteFromCart(int id)
        {
            var cart = (List<CartModels>)Session["Cart"];
            cart.Remove(cart.Find(p => p.ProductId.Equals(id)));
            return RedirectToAction("Cart", "Home");
        }
    }
}
