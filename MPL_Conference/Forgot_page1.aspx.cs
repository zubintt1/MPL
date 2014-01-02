using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace MPL_Conference
{
    public partial class Forgot_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup_page1.aspx");
        }

        protected void btn_login3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_page1.aspx");
        }

        protected void btn_ok1_Click(object sender, EventArgs e)
        {
            /*
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }
 
            string gender2 = "";                
            if (rbl_gender2.SelectedIndex == 0)
            {
                gender2 = "Male";
            }
            else
            {
                gender2 = "Female";
            }
                
            connect1.Open();            
            data_store.ExecuteNonQuery();
            data_store.Dispose();
            connect1.Close();
            */
        }
    }
}