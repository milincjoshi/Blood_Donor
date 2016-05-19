using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Donor
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void aPositive_Click(object sender, EventArgs e)
        {
            performSearch("APositive");
        }

        protected void aNegative_Click(object sender, EventArgs e)
        {
            performSearch("ANegative");
        }

        protected void bPositive_Click(object sender, EventArgs e)
        {
            performSearch("BPositive");
        }

        protected void bNegative_Click(object sender, EventArgs e)
        {
            performSearch("BNegative");
        }

        protected void abPositive_Click(object sender, EventArgs e)
        {
            performSearch("ABPositive");
        }

        protected void abNegative_Click(object sender, EventArgs e)
        {
            performSearch("ABNegative");
        }

        protected void oPositive_Click(object sender, EventArgs e)
        {
            performSearch("OPositive");
        }

        protected void oNegative_Click(object sender, EventArgs e)
        {
            performSearch("ONegative");
        }

       
        void performSearch(String BloodGroup)
        {
            Response.Redirect("Home.aspx?BloodGroup="+BloodGroup+"");
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("User/User_Registration.aspx");
        }
    }
}