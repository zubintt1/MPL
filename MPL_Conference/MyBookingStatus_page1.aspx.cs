using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace MPL_Conference
{
    public partial class MyBookingStatus_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlDataAdapter DAd;
        DataSet ds;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());
       
        protected void Page_Load(object sender, EventArgs e)
        {

            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            string thisUserID1 = (string)Session["myID1"];     

            DAd = new MySqlDataAdapter("Select confer_date1,confer_time1,confer_time2,confer_hallno1 from confer_reserv where confer_userid1='" + thisUserID1.Trim() + "' order by confer_time1", connect1);
            ds = new DataSet();
            DAd.Fill(ds);
            grid_mybookingstatus1.DataSource = ds;
            grid_mybookingstatus1.DataBind();
            //connect1.Close();

            grid_mybookingstatus1.Visible = true;

        }

        protected void btn_logout3_Click(object sender, EventArgs e)
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

        protected void btn_dcbs2_Click(object sender, EventArgs e)
        {
            //connect1.Open();
            DAd = new MySqlDataAdapter("Select confer_date1,confer_time1,confer_time2,confer_hallno1,confer_department from confer_reserv order by confer_time1", connect1);
            ds = new DataSet();
            DAd.Fill(ds);
            grid_conferstatus2.DataSource = ds;
            grid_conferstatus2.DataBind();
            //connect1.Close();

            grid_conferstatus2.Visible = true;
        }

        protected void btn_embs1_Click(object sender, EventArgs e)
        {
            lbl_date1.Visible = true;
            txtbx_conferdate2.Visible = true;
            lbl_time1.Visible = true;
            lbl_timefrom1.Visible = true;
            txtbx_confertimefrom2.Visible = true;
            lbl_timeto1.Visible = true;
            txtbx_confertimeto2.Visible = true;
            lbl_conferhallno1.Visible = true;
            txtbx_conferhallnum2.Visible = true;
            lbl_msg2.Visible = true;
            btn_submit4.Visible = true;
            btn_delete1.Visible = false;
            lbl_booked2.Visible = false;
            lbl_bookingdel1.Visible = false;

        }

        protected void btn_dmb1_Click(object sender, EventArgs e)
        {
            lbl_date1.Visible = true;
            txtbx_conferdate2.Visible = true;
            lbl_time1.Visible = true;
            lbl_timefrom1.Visible = true;
            txtbx_confertimefrom2.Visible = true;
            lbl_timeto1.Visible = true;
            txtbx_confertimeto2.Visible = true;
            lbl_conferhallno1.Visible = true;
            txtbx_conferhallnum2.Visible = true;
            lbl_msg2.Visible = true;
            btn_delete1.Visible = true;
            btn_submit4.Visible = false;
            lbl_booked2.Visible = false;
            lbl_bookingdel1.Visible = false;
        }

        protected void btn_submit4_Click(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            int Count7; 
            int.TryParse(txtbx_conferhallnum2.Text, out Count7);
            bool Ishallnumbercorrect = int.TryParse(txtbx_conferhallnum2.Text, out Count7);

            Int32 Timecount1;
            Int32 Timecount2;
            int.TryParse(txtbx_confertimefrom2.Text, out Timecount1);
            int.TryParse(txtbx_confertimeto2.Text, out Timecount2);

            bool Istime1correct = int.TryParse(txtbx_confertimefrom2.Text, out Timecount1);
            bool IsTime2correct = int.TryParse(txtbx_confertimeto2.Text, out Timecount2);

            if (Count7 > 0 && Count7 <= 4 && Ishallnumbercorrect == true && Istime1correct == true && IsTime2correct == true && Timecount1 < 2400 && Timecount2 < 2400 && Timecount1 < Timecount2)
            {

                while (connect1.State == System.Data.ConnectionState.Closed)
                {
                    connect1.Open();
                }

                data_store = new MySqlCommand("Select confer_hallno1 from confer_reserv where confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'", connect1);
                string conferhallnumber = Convert.ToString(data_store.ExecuteScalar());
                data_store.Dispose();

                data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + txtbx_conferdate2.Text.Trim() + "'", connect1);
                int Count8 = Convert.ToInt32(data_store.ExecuteScalar());
                data_store.Dispose();

                data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_hallno1 ='" + txtbx_conferhallnum2.Text.Trim() + "'", connect1);
                int Count11 = Convert.ToInt32(data_store.ExecuteScalar());
                data_store.Dispose();

                if (Count8 > 0 && Count11 > 0)
                {
                    while (connect1.State == System.Data.ConnectionState.Closed)
                    {
                        connect1.Open();
                    }

                    data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + txtbx_conferdate2.Text.Trim() + "' AND confer_time1 = '" + txtbx_confertimefrom2.Text.Trim() + "'", connect1);
                    int Count9 = Convert.ToInt32(data_store.ExecuteScalar());
                    data_store.Dispose();

                    data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + txtbx_conferdate2.Text.Trim() + "' AND confer_time2 = '" + txtbx_confertimeto2.Text.Trim() + "'", connect1);
                    int Count10 = Convert.ToInt32(data_store.ExecuteScalar());
                    data_store.Dispose();

                    if (Count8 > 0 && Count9 > 0)
                    {
                        lbl_error9.Visible = true;
                        lbl_error10.Visible = false;
                        lbl_booked2.Visible = false;
                        lbl_bookingdel1.Visible = false;
                        
                    }
                    else if (Count9 == 0 && Count10 == 0)
                    {
                        MySqlDataAdapter DAd2 = new MySqlDataAdapter("Select confer_time1,confer_time2 from confer_reserv where confer_date1 = '" + txtbx_conferdate2.Text.Trim() + "' and confer_hallno1 = '"+txtbx_conferhallnum2.Text.Trim()+"'", connect1);
                        DataSet timing = new DataSet();
                        DAd2.Fill(timing);

                        for (int i = 0; i <= timing.Tables[0].Rows.Count - 1; i++)
                        {
                            while (connect1.State == System.Data.ConnectionState.Closed)
                            {
                                connect1.Open();
                            }
                            int confer_starttime1 = Convert.ToInt32(timing.Tables[0].Rows[i][0]);
                            int confer_endtime1 = Convert.ToInt32(timing.Tables[0].Rows[i][1]);

                            while (Timecount1 < confer_starttime1 && Timecount2 <= confer_starttime1)
                            {
                                //book
                                string thisUserID1 = (string)Session["myID1"];
                                string thisuserdept1 = (string)Session["mydept1"];
                                string thisuserfullname1 = (string)Session["myfullname1"];

                                data_store = new MySqlCommand("Update confer_reserv set confer_date1 ='" + txtbx_conferdate2.Text.Trim() + "',"+
                                "confer_time1='" + txtbx_confertimefrom2.Text.Trim() + "', confer_time2='" + txtbx_confertimeto2.Text.Trim() + "',"+
                                "confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                                data_store.ExecuteNonQuery();
                                data_store.Dispose();
                                //connect1.Close();

                                lbl_error9.Visible = false;
                                lbl_error10.Visible = false;
                                lbl_booked2.Visible = true;
                                lbl_bookingdel1.Visible = false;
                                break;
                            }

                            while (i == timing.Tables[0].Rows.Count - 1 && Timecount1 >= confer_endtime1)
                            {
                                string thisUserID1 = (string)Session["myID1"];
                                string thisuserdept1 = (string)Session["mydept1"];
                                string thisuserfullname1 = (string)Session["myfullname1"];


                                data_store = new MySqlCommand("Update confer_reserv set confer_date1 ='" + txtbx_conferdate2.Text.Trim() + "'," +
                                "confer_time1='" + txtbx_confertimefrom2.Text.Trim() + "', confer_time2='" + txtbx_confertimeto2.Text.Trim() + "'," +
                                "confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                                data_store.ExecuteNonQuery();
                                data_store.Dispose();
                                //connect1.Close();

                                lbl_error9.Visible = false;
                                lbl_error10.Visible = false;
                                lbl_booked2.Visible = true;
                                lbl_bookingdel1.Visible = false;
                                break;
                            }

                        }

                    }

                    else if (Count9 > 0 && Count10 == 0)
                    {
                        lbl_error9.Visible = true;
                        lbl_error10.Visible = false;
                        lbl_booked2.Visible = false;
                        lbl_bookingdel1.Visible = false;
                        
                    }
                    else if (Count9 == 0 && Count10 > 0)
                    {
                        lbl_error9.Visible = true;
                        lbl_error10.Visible = false;
                        lbl_booked2.Visible = false;
                        lbl_bookingdel1.Visible = false;
                        
                    }
                    else
                    {
                        while (connect1.State == System.Data.ConnectionState.Closed)
                        {
                            connect1.Open();
                        }
                        string thisUserID1 = (string)Session["myID1"];
                        string thisuserdept1 = (string)Session["mydept1"];
                        string thisuserfullname1 = (string)Session["myfullname1"];

                        data_store = new MySqlCommand("Update confer_reserv set confer_date1 ='"+ txtbx_conferdate2.Text.Trim()+"', confer_time1='"+ txtbx_confertimefrom2.Text.Trim()+"', confer_time2='"+ txtbx_confertimeto2.Text.Trim()+"', confer_hallno1='"+ txtbx_conferhallnum2.Text.Trim()+"'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                        data_store.ExecuteNonQuery();
                        data_store.Dispose();
                        //connect1.Close();

                        lbl_error9.Visible = false;
                        lbl_error10.Visible = false;
                        lbl_booked2.Visible = true;
                        lbl_bookingdel1.Visible = false;
                        

                    }
                }
                else
                {
                    string thisUserID1 = (string)Session["myID1"];
                    string thisuserdept1 = (string)Session["mydept1"];
                    string thisuserfullname1 = (string)Session["myfullname1"];

                    data_store = new MySqlCommand("Update confer_reserv set confer_date1='"+ txtbx_conferdate2.Text.Trim()+"', confer_time1='"+ txtbx_confertimefrom2.Text.Trim()+"', confer_time2='"+ txtbx_confertimeto2.Text.Trim()+"', confer_hallno1='"+ txtbx_conferhallnum2.Text.Trim()+"'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                    data_store.ExecuteNonQuery();
                    data_store.Dispose();
                    //connect1.Close();

                    lbl_error9.Visible = false;
                    lbl_error10.Visible = false;
                    lbl_booked2.Visible = true;
                    lbl_bookingdel1.Visible = false;
                    

                }
            }
            else if (Count7 < 0 || Count7 > 4)
            {
                lbl_error9.Visible = false;
                lbl_error10.Visible = true;
                lbl_booked2.Visible = false;
                lbl_bookingdel1.Visible = false;
                
            }
            else if (Timecount1 > Timecount2 || Timecount1 > 2400 || Timecount2 > 2400)
            {
                lbl_error9.Visible = true;
                lbl_error10.Visible = false;
                lbl_booked2.Visible = false;
                lbl_bookingdel1.Visible = false;
            }

        }

        protected void btn_delete1_Click(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            string thisUserID1 = (string)Session["myID1"];

            data_store = new MySqlCommand("DELETE FROM confer_reserv WHERE confer_date1='"+txtbx_conferdate2.Text.Trim()+"' and confer_time1='"+txtbx_confertimefrom2.Text.Trim()+"' and confer_time2='"+txtbx_confertimeto2.Text.Trim()+"' and confer_hallno1='"+txtbx_conferhallnum2.Text.Trim()+"' and confer_userid1='"+thisUserID1.Trim()+"'", connect1);
            data_store.ExecuteNonQuery();
            data_store.Dispose();
            connect1.Close();

            lbl_error9.Visible = false;
            lbl_error10.Visible = false;
            lbl_booked2.Visible = false;
            lbl_bookingdel1.Visible = true;
        }

        }
}
