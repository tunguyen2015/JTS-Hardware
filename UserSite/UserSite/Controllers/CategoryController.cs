using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PagedList;
using UserSite;

namespace UserSite.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ShoppingEntities _entities = new ShoppingEntities();

        // GET: /Category/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            
            ViewBag.AllCate = _entities.Categories.ToList();
            ViewBag.Prod = _entities.GetProductByCategory(id).ToList();
            return View(_entities.Categories.Find(id));
        }
    }
}
