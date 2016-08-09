using System;
using System.Text;

namespace ClerkSite
{
    public partial class EditProduct : System.Web.UI.Page
    {
        private int _prodId;
        private readonly ShoppingEntities _shop = new ShoppingEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the id parameter from the URL.
            var urlId = Request.QueryString["id"];
            _prodId = int.Parse(urlId);

            // Get all categories and add them to the dropdown list.
            var categories = _shop.GetAllCategory();
            foreach(var c in categories)
            {
                var itemName = new StringBuilder();
                itemName.Append(c.CategoryID.ToString());
                itemName.Append(" - ");
                itemName.Append(c.Title);
                cate_list.Items.Add(itemName.ToString());
            }

            if (Page.IsPostBack) return;
            // Retrieve the product and set its data in the website.
            var product = _shop.GetProductByID(_prodId);
            foreach(var p in product)
            {                
                title.Text = p.Title;
                shortD.Text = p.ShortDescription;
                longD.Text = p.LongDescription;
                imagerurl.Text = p.ImageUrl;
                price.Text = p.Price.ToString();

                var category = _shop.GetCategoryByID(p.CategoryID);
                var itemName = new StringBuilder();
                foreach (var c in category)
                {                    
                    itemName.Append(c.CategoryID.ToString());
                    itemName.Append(" - ");
                    itemName.Append(c.Title);
                }

                cate_list.Items.FindByText(itemName.ToString()).Selected = true;
                break;
            }
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            var id = cate_list.SelectedItem.ToString()[0];
            var cateId = int.Parse(id.ToString());
            // Update the product.
            _shop.UpdateProduct(_prodId, cateId, title.Text, shortD.Text, 
            longD.Text, imagerurl.Text, decimal.Parse(price.Text));

            Response.Redirect("ProductList.aspx?id=" + cateId);
        }        
    }
}