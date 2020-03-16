using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRentalSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMessage_Click(object sender, EventArgs e)
        {
            //get the user name or password from the user 
            if (txtName.Text.ToString().Equals("") && txtPassword.Text.ToString().Equals(""))
            {
                rslt.InnerHtml = "Enter User Name or Password";
            }
            else {
                //if the user name or password is filled after that verif the user name or password 
                //object of the class 
                Database.Link obj = new Database.Link();
                //pass the query 
                String query = "select * from admin where admin='"+txtName.Text.ToString()+"' and password='"+txtPassword.Text.ToString()+"'";
                DataTable tbl = new DataTable();
                tbl = obj.checkLogin(query);
                if (tbl.Rows.Count > 0)
                {
                    Response.Redirect("Dashboard.aspx");
                }
                else {
                    rslt.InnerHtml = "Enter Valid user name or Password ";
                }



            }
        }
    }
}