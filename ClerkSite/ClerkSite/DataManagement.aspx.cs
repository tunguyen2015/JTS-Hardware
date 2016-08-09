using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace ClerkSite
{
    public partial class DataManagement : System.Web.UI.Page
    {
        public List<GetAllCategory_Result> Categories { get; set; }
        private readonly ShoppingEntities _shop = new ShoppingEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve all categories from database.
            Categories = _shop.GetAllCategory().ToList();
            // Retrieve the id parameter from the URL.
            var urlId = Request.QueryString["id"];

            if (urlId == null) return;
            var id = int.Parse(urlId);
            // Delete the relevant product.
            _shop.DeleteProductByCategory(id);
            // Delete the category.
            _shop.DeleteCategory(id);
            Response.Redirect("DataManagement.aspx");
        }
        
        protected void Edit_Command(object sender, CommandEventArgs e)
        {                       
            Response.Redirect("EditCategory.aspx?id=" + e.CommandArgument);
        }        
    }
}