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
    public partial class Signup_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn_csuol1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_page1.aspx");
        }

        protected void btn_signup3_Click(object sender, EventArgs e)
        {

            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }
            /*
            string select_dept1 = Convert.ToString(cmbx_dept1.SelectedValue);
            string typed_dept1 = Convert.ToString(cmbx_dept1.Text);
            string confir_dept;

            data_store = new MySqlCommand("Select Count(*) from user_detailsstored where user_department = '" + select_dept1.Trim() + "'", connect1);
            int Count11 = Convert.ToInt32(data_store.ExecuteScalar());
            data_store.Dispose();

            if (Count11 > 0)
            {
                confir_dept = select_dept1;
            }
            else
            {
                confir_dept = typed_dept1;
                cmbx_dept1.Items.Add(typed_dept1);
            }

            */     
            string gender1 = "";
            if (rbl_gender1.SelectedIndex == 0)
            {
                gender1 = "Male";
            }
            else
            {
                gender1 = "Female";
            }


            String appy1 = txtbx_password1.Text.ToString();
            String appy2 = txtbx_confpassword.Text.ToString();


            if (appy1 != ""  && appy2 != "")
            {
                if (txtbx_password1.Text.Trim() == txtbx_confpassword.Text.Trim())
                {

                    int loggedinstatus = 0;

                    data_store = new MySqlCommand("Insert InTo user_detailsstored(user_id1,user_fullname1,user_department1,user_age1,user_dob1," +
                    "user_email1,user_password1,user_gender1,user_secques1,user_secans1,user_email3,user_loggedinstatus,user_localipaddress1) Values('" + txtbx_username1.Text.Trim() + "','" + txtbx_fullname1.Text.Trim() + "'," +
                    "'" + txtbx_department1.Text.Trim() + "','" + txtbx_age1.Text.Trim() + "','" + txtbx_dob1.Text.Trim() + "','" + txtbx_email1.Text.Trim() + "','" + txtbx_password1.Text.Trim() + "','" + gender1.Trim() + "'," +
                    "'" + txtbx_secques1.Text.Trim() + "','" + txtbx_secans1.Text.Trim() + "',' ','" + loggedinstatus + "',' ')", connect1);
                    data_store.ExecuteNonQuery();
                    data_store.Dispose();

                    /*
                    data_store = new MySqlCommand("Update user_detailsstored set user_loggedinstatus ='1' where use_id1 ='" + txtbx_username1.Text + "'", connect1);
                    data_store.ExecuteNonQuery();
                    data_store.Dispose();
                    */

                    connect1.Close();
                    lbl_success1.Visible = true;
                    lbl_error1.Visible = false;
                    Response.Redirect("First_page1.aspx");
                }
                else
                {
                    lbl_error1.Visible = true;
                    lbl_success1.Visible = false;
                }
            }
            else
            {
                lbl_error1.Visible = true;
                lbl_success1.Visible = false;
            }
            
        }

    }
}