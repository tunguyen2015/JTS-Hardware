using System;

namespace ClerkSite
{
    public partial class NewCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Cate_Click(object sender, EventArgs e)
        {
            var shop = new ShoppingEntities();
            // Add new category.
            shop.AddCategory(title.Text, imagerurl.Text);
            Response.Redirect("DataManagement.aspx");
        }
    }
}