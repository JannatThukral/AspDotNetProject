using NikeShoeStore.Models;
using System;
using System.Collections.Generic;
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
    public partial class Checkout : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkoutBtn_Click(object sender, EventArgs e)
        {
            // checkout button click to place order
            ProductCartItemList list = ProductCartItemList.GetCart();
            ProductCartItem item;
            for (int i = 0; i < list.Count; i++)
            {
                item = list[i];
                decimal total = item.Product.Price * item.Quantity;
                databaseHandler.OrderPlaced("1", item.Product.Id, item.Quantity.ToString(), total.ToString());
            }
            
            Response.Redirect("Thankyou.aspx");
        }
    }
}