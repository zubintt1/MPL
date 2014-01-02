using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Net;
using System.Net.Sockets;

namespace MPL_Conference
{
    public partial class Login_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());

        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
                       
        }

        protected void btn_frgetpass1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgot_page1.aspx");
        }

        protected void btn_signup2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup_page1.aspx");
        }

        

        protected void btn_login2_Click(object sender, EventArgs e)
        {


            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();           
            }

            data_store = new MySqlCommand("Select Count(*) from user_detailsstored where user_id1 ='"+txtbx_username2.Text+"'", connect1);
            int Count1 = Convert.ToInt32(data_store.ExecuteScalar());
            data_store.Dispose();

            data_store = new MySqlCommand("Select user_department1 from user_detailsstored where user_id1 ='"+txtbx_username2.Text+"'", connect1);
            string department1 = Convert.ToString(data_store.ExecuteScalar());
            data_store.Dispose();

            data_store = new MySqlCommand("Select user_password1 from user_detailsstored where user_id1='"+txtbx_username2.Text+"'", connect1);
            string password1 = Convert.ToString(data_store.ExecuteScalar());
            data_store.Dispose();
            
            

            if (Count1 >= 1 && department1 == txtbx_department2.Text && password1 == txtbx_password2.Text)
            {
                
                data_store = new MySqlCommand("Select user_fullname1 from user_detailsstored where user_id1='" + txtbx_username2.Text + "'", connect1);
                string fullname1 = Convert.ToString(data_store.ExecuteScalar());
                data_store.Dispose();


                Session["myfullname1"] = fullname1;
                string thisuserfullname1 = (string)Session["myfullname1"];

                Session["myID1"] = txtbx_username2.Text.Trim();
                string thisUserID1 = (string)Session["myID1"];

                Session["mydept1"] = txtbx_department2.Text.Trim();
                string thisuserdept1 = (string)Session["mydept1"];

                data_store = new MySqlCommand("Update user_detailsstored set user_loggedinstatus = '1' where user_id1='" + thisUserID1.Trim() + "'", connect1);
                data_store.ExecuteNonQuery();
                data_store.Dispose();

                Response.Redirect("Calendar_page1.aspx");

            }
            else if (Count1 == 0)
            {
                lbl_usernamecheck2.Visible = true;
                lbl_passwordcheck2.Visible = false;
                lbl_departmentcheck2.Visible = false;
            }
            else if (password1 != txtbx_password2.Text)
            {
                lbl_passwordcheck2.Visible = true;
                lbl_usernamecheck2.Visible = false;
                lbl_departmentcheck2.Visible = false;
            }
            else if (department1 != txtbx_department2.Text)
            {
                lbl_departmentcheck2.Visible = true;
                lbl_passwordcheck2.Visible = false;
                lbl_usernamecheck2.Visible = false;
            }
            else
            {
                lbl_option1.Visible = true;
                btn_signup2.Visible = true;
            }


        }

        
    }
}