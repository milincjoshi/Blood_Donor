using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class BloodBank_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check weather session variable null or not
            if (Session["bloodbankEmail"] != null)
            {
                //Retrieving UserName from Session
                String Email = Session["bloodbankEmail"].ToString();
                String sql = String.Format("select * from bloodbanks where bloodbankEmail = '{0} '", Email);
                DataTable dt = MainClass.getData(sql);

                String bloodbankProfileImage = dt.Rows[0]["bloodbankProfileImage"].ToString();
                if (bloodbankProfileImage == "")
                {
                    bloodbankImage.ImageUrl = "../images/profile_images/default.png";
                }
                else
                {
                    bloodbankImage.ImageUrl = bloodbankProfileImage;
                }

                bloodbankName.Text = dt.Rows[0]["bloodbankName"].ToString();
                bloodbankEmail.Text = Email;
                bloodbankPhone.Text = dt.Rows[0]["bloodbankPhone"].ToString();
                bloodbankAddressLine1.Text = dt.Rows[0]["bloodbankAddressLine1"].ToString();
                bloodbankAddressLine2.Text = dt.Rows[0]["bloodbankAddressLine2"].ToString();
                bloodbankCity.Text = dt.Rows[0]["bloodbankCity"].ToString();
                bloodbankState.Text = dt.Rows[0]["bloodbankState"].ToString();
                bloodbankCountry.Text = dt.Rows[0]["bloodbankCountry"].ToString();
                bloodbankPinCode.Text = dt.Rows[0]["bloodbankPinCode"].ToString();
            }
            else
            {
                Response.Redirect("bloodbank_Login.aspx");
            }
        }
    }
}