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
    public partial class Login : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            // if user is admin the redirect to admin panel
            if(email.Text=="admin@gmail.com" && password.Text == "admin")
            {
                Session["Email"] = email.Text;
                Response.Redirect("AdminProducts.aspx");
                return;
            }
            // else login user and redirect to index page
            SqlDataReader reader = databaseHandler.Login(email.Text,password.Text);
            if (reader.Read())
            {
                Session["Name"] = reader["Name"].ToString();
                Session["Email"] = email.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblMessage.Text = "Email or password is incorrect!";
            }
        }
    }
}