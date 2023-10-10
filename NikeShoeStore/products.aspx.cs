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
    public partial class products : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            // get all the product based on category
            SqlDataReader reader;
            if (Request.QueryString["category"] != null && Request.QueryString["category"] != string.Empty)
            {

                reader = databaseHandler.GetProducts(Request.QueryString["category"]);
                rptProduct.DataSource = reader;
                rptProduct.DataBind();
                return;
            }
            reader = databaseHandler.GetProducts("");
            rptProduct.DataSource = reader;
            rptProduct.DataBind();
        }
    }
}