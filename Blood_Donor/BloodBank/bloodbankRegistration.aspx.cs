using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class bloodbankRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {

            String BloodBankName = bloodbankName.Text;
          
            String BloodBankEmail = bloodbankEmail.Text;
            String BloodBankPassword = bloodbankPassword.Text;
            
            String BloodBankPhone = bloodbankPhone.Text;
            String BloodBankzipCode = bloodbankPinCode.Text;

            String sql = String.Format("insert into bloodbanks(bloodbankEmail, bloodbankPassword, bloodbankName, bloodbankPhone, bloodbankPincode) values('{0}','{1}','{2}','{3}','{4}')", BloodBankEmail, BloodBankPassword, BloodBankName, BloodBankPhone, BloodBankzipCode);
            String result = MainClass.insert(sql);

            Response.Redirect("UserLogin.aspx");
        }
    }
}