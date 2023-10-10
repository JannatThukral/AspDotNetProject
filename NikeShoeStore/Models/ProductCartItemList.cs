using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NikeShoeStore.Models
{
    public class ProductCartItemList
    {
        private List<ProductCartItem> cartItems;

        public ProductCartItemList()
        {
            cartItems = new List<ProductCartItem>();
        }

        public int Count
        {
            get { return cartItems.Count; }
        }

        public ProductCartItem this[int index]
        {
            get { return cartItems[index]; }
            set { cartItems[index] = value; }
        }

        public ProductCartItem this[string id]
        {
            get
            {
                foreach (ProductCartItem c in cartItems)
                    if (c.Product.Id == id) return c;
                return null;
            }
        }

        public static ProductCartItemList GetCart()
        {
            ProductCartItemList cart = (ProductCartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new ProductCartItemList();
            return (ProductCartItemList)HttpContext.Current.Session["Cart"];
        }

        public void AddItem(Product product, int quantity)
        {
            ProductCartItem c = new ProductCartItem(product, quantity);
            cartItems.Add(c);
        }

        public void RemoveAt(int index)
        {
            cartItems.RemoveAt(index);
        }

        public void Clear()
        {
            cartItems.Clear();
        }
    }
}