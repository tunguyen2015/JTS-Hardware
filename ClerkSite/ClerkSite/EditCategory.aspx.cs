using System;
using System.Data.Entity.Core.Objects;

namespace ClerkSite
{
    public partial class EditCategory : System.Web.UI.Page
    {               
        private readonly ShoppingEntities _shop = new ShoppingEntities();
        private int _cateId;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the id parameter from the URL.
            var urlId = Request.QueryString["id"];
            _cateId = int.Parse(urlId);

            if (Page.IsPostBack) return;
            // Get the required category.
            var category = _shop.GetCategoryByID(_cateId);
            // Set the information of the category.
            foreach (var a in category)
            {
                title.Text = a.Title;
                imagerurl.Text = a.ImageUrl;
            }
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            var tilt = title.Text;
            var img = imagerurl.Text;            
            // Update the category.
            _shop.UpdateCategory(_cateId, tilt, img);            
            Response.Redirect("DataManagement.aspx");
        }
    }
}