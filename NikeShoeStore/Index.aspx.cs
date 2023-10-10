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
    public partial class Index : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            // get top 8 products 
            SqlDataReader reader = databaseHandler.GetTop8Products();
            rptProduct.DataSource = reader;
            rptProduct.DataBind();
        }
    }
}