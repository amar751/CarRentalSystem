using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRentalSystem
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMessage_Click(object sender, EventArgs e)
        {
            Database.Link obj = new Database.Link();
            String sql = "insert into Contact values ('"+txtName.Text+"','"+txtContact.Text+"','"+txtSubject.Text+"','"+txtMsg.Text +"')";
            obj.InsertQuery(sql);
            rslt.InnerHtml = "Thanks for  the Feed back";
            txtContact.Text = "";
            txtMsg.Text = "";
            txtName.Text = "";
            txtSubject.Text = "";
                

        }
    }
}