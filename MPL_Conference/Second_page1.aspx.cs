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
    public partial class Second_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_CR1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calendar_page1.aspx");
        }

        protected void btn_logout1_Click(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            string thisUserID1 = (string)Session["myID1"];
           
            data_store = new MySqlCommand("Update user_detailsstored set user_loggedinstatus = '0' where user_id1='" + thisUserID1.Trim() + "'", connect1);
            data_store.ExecuteNonQuery();
            data_store.Dispose();
            connect1.Close();
            Response.Redirect("First_page1.aspx");
        }

        protected void btn_IDC1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chat_page1.aspx");
        }
    }
}