using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace UserSite.Models
{
    public class CartModels
    {        
        public string ProductImage { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; }  
        
        [Required]      
        [RegularExpression(@"^[0-9]+$")]
        public int Quantity { get; set; }

        public decimal Price { get; set; }
        public decimal Total { get; set; }

        public CartModels()
        {
            
        }

        public CartModels(int quantity)
        {
            Quantity = quantity;
        }

        public CartModels(string productImage, int productId, string productName, int quantity, decimal price)
        {            
            ProductImage = productImage;
            ProductId = productId;
            ProductName = productName;
            Quantity = quantity;
            Price = price;
            Total = price * quantity;
        }
    }
}