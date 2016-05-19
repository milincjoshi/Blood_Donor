using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            String sql = String.Format("select * from Users where userEmail = '{0}' and userPassword = '{1}' ", userEmail.Text, userPassword.Text);
            DataTable dt = MainClass.getData(sql);
            if (dt.Rows.Count!=0)
            {
                Session["userEmail"] = dt.Rows[0]["userEmail"].ToString();
                Response.Redirect("User_Profile.aspx");
            }
        }

    }
}