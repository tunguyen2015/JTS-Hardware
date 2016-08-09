using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClerkSite
{
    public partial class NewProduct : System.Web.UI.Page
    {
        public List<GetAllCategory_Result> Categories { get; set; }
        private readonly ShoppingEntities _shop = new ShoppingEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve all categories.
            Categories = _shop.GetAllCategory().ToList();

            // Add the categories to the dropdown list.
            foreach (var c in Categories)
            {
                var itemName = new StringBuilder();
                itemName.Append(c.CategoryID.ToString());
                itemName.Append(" - ");
                itemName.Append(c.Title);
                category_list.Items.Add(itemName.ToString());
            }
        }

        protected void Add_Prod_Click(object sender, EventArgs e)
        {
            var id = category_list.SelectedItem.ToString()[0];
            var cateId = int.Parse(id.ToString());
            // Add new product.
            _shop.AddProduct(cateId, prod_title.Text, shortD.Text, longD.Text, image.Text, decimal.Parse(price.Text));
            Response.Redirect("ProductList.aspx?id=" + cateId);
        }
    }
}