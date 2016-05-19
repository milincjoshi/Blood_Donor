using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String bloodGroup = Request.QueryString["BloodGroup"];
            String bloodType = "";
            switch (bloodGroup) {
                case "APositive":
                    bloodType = "APositive";
                    break;
                case "ANegative":
                    bloodType = "ANegative";
                    break;
                case "BPositive":
                    bloodType = "BPositive";
                    break;
                case "BNegative":
                    bloodType = "BNegative";
                    break;
                case "ABPositive":
                    bloodType = "ABPositive";
                    break;
                case "ABNegative":
                    bloodType = "ABNegative";
                    break;
                case "OPositive":
                    bloodType = "OPositive";
                    break;
                case "ONegative":
                    bloodType = "ONegative";
                    break;
            }

            String sql = String.Format("select * from users where userBloodGroup = '{0}'", bloodType);
            DataTable dt = MainClass.getData(sql);
            result_list.DataSource = dt;
            result_list.DataBind();
        }
    }
}