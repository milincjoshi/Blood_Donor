using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blood_Donor
{
    class MainClass
    {
        enum BloodGroup { APositive, ANegative, BPositive, BNegative, ABPositive, ABNegative, OPositive, ONegative };

        public static String getBloodSign(String BloodGroup)
        {
            String bloodType = "";

            switch (BloodGroup)
            {
                case "APositive":
                    bloodType = "A+";
                    break;
                case "ANegative":
                    bloodType = "A-";
                    break;
                case "BPositive":
                    bloodType = "B+";
                    break;
                case "BNegative":
                    bloodType = "B-";
                    break;
                case "ABPositive":
                    bloodType = "AB+";
                    break;
                case "ABNegative":
                    bloodType = "AB-";
                    break;
                case "OPositive":
                    bloodType = "O+";
                    break;
                case "ONegative":
                    bloodType = "O-";
                    break;
            }

            return bloodType;
        }

        //Declaration
        //public static String databaseLocation = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=;darshanvyas5_; User Id = darshanvyas5; Password=8l00DD0N0r;Integrated Security=True";
        //public static String databaseLocation = @"Data Source=198.71.225.145;Initial Catalog=darshanvyas5_;UId=darshanvyas5;Password=8l00DD0N0r";
        public static String databaseLocation = @"Data Source = 198.71.225.145; Initial Catalog = darshanvyas5_; User Id = darshanvyas5; Password=8l00DD0N0r";      
        public static SqlCommand cmd;
        public static SqlDataAdapter adp;
        public static DataTable dt;
        public static SqlConnection con;

        //Connect to Database
        public static void connect() {

            try {

                //Clean
                con = null;

                //Process
                con = new SqlConnection(databaseLocation);
                con.Open();

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
            
        }

        //Insert Data
        public static String insert(String sql) {
            
            //Clean
            cmd = null;

            //Connect
            connect();

            //Process
            cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            //Disconnect
            disconnect();

            return "Insert Successful";

        }

        //Retrieve Data
        public static DataTable getData(String sql) {

            //Clean
            dt = null;
            adp = null;

            //Process
            connect();

            dt = new DataTable();
            adp = new SqlDataAdapter(sql, con);
            adp.Fill(dt);

            disconnect();

            return dt;
        }

        public static String getBloodType(String bloodGroup) {

            String bloodType = "";

            switch (bloodGroup)
            {
                case "A+":
                    bloodType = "APositive";
                    break;
                case "A-":
                    bloodType = "ANegative";
                    break;
                case "B+":
                    bloodType = "BPositive";
                    break;
                case "B-":
                    bloodType = "BNegative";
                    break;
                case "AB+":
                    bloodType = "ABPositive";
                    break;
                case "AB-":
                    bloodType = "ABNegative";
                    break;
                case "O+":
                    bloodType = "OPositive";
                    break;
                case "O-":
                    bloodType = "ONegative";
                    break;
            }

            return bloodType;

        }
        public static void disconnect() {
            try { con.Close(); }
            catch (Exception ex) { System.Diagnostics.Debug.WriteLine(ex.ToString()); }
            finally
            { con.Close(); }
        }
    }
}
