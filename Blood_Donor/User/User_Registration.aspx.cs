using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            String FirstName = userFirstName.Text;
            String LastName = userLastName.Text;
            String Email = userEmail.Text;
            String Password = userPassword.Text;
            String BloodGroup = bloodGroup.SelectedItem.Text;
            String phone = userPhone.Text;
            String zipCode = userPinCode.Text; 

            String bloodType = MainClass.getBloodType(BloodGroup);
            System.Diagnostics.Debug.WriteLine(FirstName+LastName+Email+Password+BloodGroup);

            String sql = String.Format("insert into users(userEmail, userPassword, userFirstName, userLastName, userBloodGroup, userPhone, userPincode) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", Email, Password, FirstName, LastName, bloodType, phone, zipCode);
            String result = MainClass.insert(sql);

            Response.Redirect("User_Login.aspx");
        }
    }
}