using NikeShoeStore.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Jannat Thukral 8842822
// Samhitha Manthramurthy 8830136
// Shaveta sharma 8835866
// Akshit gupta 8856092
namespace NikeShoeStore
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            // product details by id
            if (Request.QueryString["id"] != null && Request.QueryString["id"] != string.Empty)
            {
                
                SqlDataReader reader = databaseHandler.GetProduct(Request.QueryString["id"]);
                if (reader.Read())
                {
                    // display details of product
                    productName.Text = reader["category"].ToString() +"'s " + reader["name"].ToString();
                    productPrice.Text = "$"+reader["price"].ToString();
                    productDescription.Text = reader["description"].ToString();
                    lblDescription2.Text = productDescription.Text;
                    productImage.ImageUrl = reader["image"].ToString();
                }
                else
                    Response.Redirect("products.aspx");
            }
            else
                Response.Redirect("products.aspx");
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            // add to cart button logic
            Product product = new Product();
            if (txtQty.Text==null || txtQty.Text == string.Empty)
            {
                qtyLbl.Text = "Please enter quantity";
                return;
            }
            if (Convert.ToInt32(txtQty.Text)<1  || Convert.ToInt32(txtQty.Text)>50)
            {
                qtyLbl.Text = "Quantity must be between 1 to 50";
                return;
            }
            ProductCartItemList cart = ProductCartItemList.GetCart();
            ProductCartItem cartItem = cart[Request.QueryString["id"]];

            if (cartItem == null)
            {
                product.Id = Request.QueryString["id"];
                product.Name = productName.Text;
                product.Price = Convert.ToDecimal(productPrice.Text.Substring(1));
                cart.AddItem(product, Convert.ToInt32(txtQty.Text));
            }
            else
            {
                cartItem.AddQuantity(Convert.ToInt32(txtQty.Text));
            }
            Response.Redirect("Cart.aspx");
        }
    }
}