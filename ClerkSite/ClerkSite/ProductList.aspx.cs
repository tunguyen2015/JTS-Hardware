using System;
using System.Collections.Generic;
using System.Linq;

namespace ClerkSite
{
    public partial class ProductList : System.Web.UI.Page
    {        
        public List<GetProductByCategory_Result> Products { get; set; }        
        public List<GetCategoryByID_Result> CateName { get; set; }
        private readonly ShoppingEntities _shop = new ShoppingEntities();        

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the parameters from the URL.
            var urlId = Request.QueryString["id"];
            var cateId = Request.QueryString["category"];            
            var id = int.Parse(urlId);
            
            Products = _shop.GetProductByCategory(id).ToList();            
            CateName = _shop.GetCategoryByID(id).ToList();

            if (cateId == null) return;
            // Delete the product.
            _shop.DeleteProductByID(id);
            Response.Redirect("ProductList.aspx?id=" + cateId);
        }        
    }
}