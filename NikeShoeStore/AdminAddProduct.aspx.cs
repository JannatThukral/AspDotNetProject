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
    public partial class AdminAddProduct : System.Web.UI.Page
    {
        DatabaseHandler databaseHandler = new DatabaseHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // add product button click
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string image = String.Empty;
            if (fudImage.HasFile)
            {
                image = "/images/" + Guid.NewGuid() + ".jpg";
            }
            int inserted = databaseHandler.InsertProduct(txtName.Text,txtDescription.Text,image,Convert.ToDecimal(txtPrice.Text),Convert.ToInt32(ddlCategory.SelectedValue));
            if (inserted != 0)
            {
                fudImage.SaveAs(Server.MapPath(image));
                Response.Redirect("AdminProducts.aspx");
            }
        }
    }
}