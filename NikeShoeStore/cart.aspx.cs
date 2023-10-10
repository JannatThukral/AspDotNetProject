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
    public partial class cart : System.Web.UI.Page
    {
        private ProductCartItemList productCartItemList;
        protected void Page_Load(object sender, EventArgs e)
        {
            productCartItemList = ProductCartItemList.GetCart();
            if (!IsPostBack)
                this.showCart();
        }
        // display cart
        private void showCart()
        {
            cartList.Items.Clear();
            ProductCartItem item;
            for (int i = 0; i < productCartItemList.Count; i++)
            {
                item = productCartItemList[i];
                cartList.Items.Add(item.Display());
            }
        }
        // continue shopping

        protected void ContinueShoppingBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
        // checkout button
        protected void CheckoutBtn_Click(object sender, EventArgs e)
        {
            // product are in the cart
            if (productCartItemList.Count > 0)
            {
                Response.Redirect("Checkout.aspx");
            }
            else
            {
                lblMessage.Text = "Cart is empty.";
            }
        }

        protected void RemoveItemBtn_Click(object sender, EventArgs e)
        {
            // remove items 
            if (cartList.SelectedIndex > -1)
            {
                productCartItemList.RemoveAt(cartList.SelectedIndex);
                showCart();
            }
            else
            {
                lblMessage.Text = "Cart is empty.";
            }
        }

        protected void EmptyCartBtn_Click(object sender, EventArgs e)
        {
            // empty cart
            if (productCartItemList.Count > 0)
            {
                productCartItemList.Clear();
                cartList.Items.Clear();
            }
            else
            {
                lblMessage.Text = "Cart is empty.";
            }
        }
    }
}