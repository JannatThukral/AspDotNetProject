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
    public partial class Register : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            // register button if admin is registering 
            if (email.Text == "admin@gmail.com" && password.Text == "admin")
            {
                return;
            }
            // register an employee
            int inserted = databaseHandler.Register(email.Text, password.Text,name.Text);
            if (inserted != 0)
            {
                Session["Name"] = name.Text;
                Session["Email"] = email.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblMessage.Text = "Some error occured!";
            }
        }
    }
}