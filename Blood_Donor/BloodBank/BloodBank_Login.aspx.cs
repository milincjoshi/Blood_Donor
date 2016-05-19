using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class BloodBankLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            String sql = String.Format("select * from BloodBanks where bloodbankEmail = '{0}' and bloodbankPassword = '{1}' ", bloodbankEmail.Text, bloodbankPassword.Text);
            DataTable dt = MainClass.getData(sql);
            if (dt.Rows.Count != 0)
            {
                Session["bloodbankEmail"] = dt.Rows[0]["bloodbankEmail"].ToString();
                Response.Redirect("BloodBank_Profile.aspx");
            }
        }

    }
}