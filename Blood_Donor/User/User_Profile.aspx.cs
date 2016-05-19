using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class User_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check weather session variable null or not
            if (Session["userEmail"] != null)
            {
                //Retrieving UserName from Session
                String Email = Session["userEmail"].ToString();
                String sql = String.Format("select * from users where userEmail = '{0} '", Email);
                DataTable dt = MainClass.getData(sql);

                String userProfileImage = dt.Rows[0]["userProfileImage"].ToString();
                if (userProfileImage == "")
                {
                    userImage.ImageUrl = "../images/profile_images/default.png";
                }
                else
                {
                    userImage.ImageUrl = userProfileImage;
                }

                userFirstName.Text = dt.Rows[0]["userFirstName"].ToString();
                userEmail.Text = Email;
                userLastName.Text = dt.Rows[0]["userLastName"].ToString();
                userPhone.Text = dt.Rows[0]["userPhone"].ToString();
                userAddressLine1.Text = dt.Rows[0]["userAddressLine1"].ToString();
                userAddressLine2.Text = dt.Rows[0]["userAddressLine2"].ToString();
                userCity.Text = dt.Rows[0]["userCity"].ToString();
                userState.Text = dt.Rows[0]["userState"].ToString();
                userCountry.Text = dt.Rows[0]["userCountry"].ToString();
                userPinCode.Text = dt.Rows[0]["userPinCode"].ToString();

                String bloodType = dt.Rows[0]["userBloodGroup"].ToString();
                userBloodGroup.Text = MainClass.getBloodSign(bloodType);

               
            }
            else
            {
                Response.Redirect("User_Login.aspx");
            }
        }
    }
}