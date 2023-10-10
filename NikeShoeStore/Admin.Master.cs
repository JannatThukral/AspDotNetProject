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
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if email is not of admin then redirect to login page
            if (Session["Email"] == null || Session["Email"].ToString() != "admin@gmail.com")
                Response.Redirect("Login.aspx");
        }

        protected void lbnLogout_Click(object sender, EventArgs e)
        {
            // log out
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}