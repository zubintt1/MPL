using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;

namespace MPL_Conference
{
    public partial class CalendarisedMyBookingStatus_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlDataAdapter DAd1;
        DataSet ds;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            string thisUserID1 = (string)Session["myID1"];

            DAd1 = new MySqlDataAdapter("Select confer_date1 as 'Conference Date',confer_time1 as 'Start',confer_time2 as 'End',confer_hallno1 as 'Conference Hall' from confer_reserv where confer_userid1='" + thisUserID1.Trim() + "' order by confer_time1", connect1);
            ds = new DataSet();
            DAd1.Fill(ds);
            grid_mybookingstatus1.DataSource = ds;
            grid_mybookingstatus1.DataBind();
            grid_mybookingstatus1.Visible = true;
        }

        protected void btn_logout6_Click(object sender, EventArgs e)
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

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            DAd1 = new MySqlDataAdapter("Select confer_time1 as 'Start',confer_time2 as 'End',confer_hallno1 as 'Conference Hall',confer_department as 'Department' from confer_reserv where confer_date1 = '" + Calendar2.SelectedDate.ToString("d").Trim() + "'order by confer_time1", connect1);
            ds = new DataSet();
            DAd1.Fill(ds);
            if (DAd1 == null)
            {
                lbl_notify2.Visible = true;
            }
            else
            {
                lbl_notify2.Visible = false;

                grid_conferstatus2.DataSource = ds;
                grid_conferstatus2.DataBind();
                connect1.Close();

                grid_conferstatus2.Visible = true;               
            }


            lbl_time2.Visible = false;
            lbl_timefrom2.Visible = false;
            lbl_timeto2.Visible = false;
            lbl_notify1.Visible = false;
            lbl_conferhallnum2.Visible = false;
            txtbx_timefrom2.Visible = false;
            txtbx_timeto2.Visible = false;
            txtbx_conferhallnum2.Visible = false;
            btn_submit1.Visible = false;
            btn_submit1.Enabled = false;
            lbl_error1.Visible = false;
            lbl_error2.Visible = false;
            btn_del1.Visible = false;
            btn_del1.Enabled = false;
            lbl_booked1.Visible = false;
            lbl_bookingdel1.Visible = false;
        }

        protected void btn_embs2_Click(object sender, EventArgs e)
        {
            lbl_time2.Visible = true;
            lbl_timefrom2.Visible = true;
            lbl_timeto2.Visible = true;
            lbl_notify1.Visible = true;
            lbl_conferhallnum2.Visible = true;
            txtbx_timefrom2.Visible = true;
            txtbx_timeto2.Visible = true;
            txtbx_conferhallnum2.Visible = true;
            btn_submit1.Visible = true;
            btn_submit1.Enabled = true;
            lbl_error1.Visible = false;
            lbl_error2.Visible = false;
            btn_del1.Visible = false;
            btn_del1.Enabled = false;
            lbl_booked1.Visible = false;
            lbl_bookingdel1.Visible = false;
        }

        protected void btn_delmb1_Click(object sender, EventArgs e)
        {
            lbl_time2.Visible = true;
            lbl_timefrom2.Visible = true;
            lbl_timeto2.Visible = true;
            lbl_notify1.Visible = true;
            lbl_conferhallnum2.Visible = true;
            txtbx_timefrom2.Visible = true;
            txtbx_timeto2.Visible = true;
            txtbx_conferhallnum2.Visible = true;
            btn_submit1.Visible = false;
            btn_submit1.Enabled = false;
            lbl_error1.Visible = false;
            lbl_error2.Visible = false;
            btn_del1.Visible = true;
            btn_del1.Enabled = true;
            lbl_booked1.Visible = false;
            lbl_bookingdel1.Visible = false;
        }

        protected void btn_submit1_Click(object sender, EventArgs e)
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
            int.TryParse(txtbx_timefrom2.Text, out Timecount1);
            int.TryParse(txtbx_timeto2.Text, out Timecount2);

            bool Istime1correct = int.TryParse(txtbx_timefrom2.Text, out Timecount1);
            bool IsTime2correct = int.TryParse(txtbx_timeto2.Text, out Timecount2);

            if (Count7 > 0 && Count7 <= 3 && Ishallnumbercorrect == true && Istime1correct == true && IsTime2correct == true && Timecount1 < 2400 && Timecount2 < 2400 && Timecount1 < Timecount2)
            {

                while (connect1.State == System.Data.ConnectionState.Closed)
                {
                    connect1.Open();
                }

                data_store = new MySqlCommand("Select confer_hallno1 from confer_reserv where confer_hallno1='" + txtbx_conferhallnum2.Text + "'", connect1);
                string conferhallnumber = Convert.ToString(data_store.ExecuteScalar());
                data_store.Dispose();

                data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + Calendar2.SelectedDate.ToString("d").Trim() + "'", connect1);
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

                    data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + Calendar2.SelectedDate.ToString("d").Trim() + "' AND confer_time1 = '" + txtbx_timefrom2.Text + "'", connect1);
                    int Count9 = Convert.ToInt32(data_store.ExecuteScalar());
                    data_store.Dispose();

                    data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + Calendar2.SelectedDate.ToString("d").Trim() + "' AND confer_time2 = '" + txtbx_timeto2.Text + "'", connect1);
                    int Count10 = Convert.ToInt32(data_store.ExecuteScalar());
                    data_store.Dispose();

                    if (Count8 > 0 && Count9 > 0)
                    {
                        lbl_error1.Visible = true;
                        lbl_error2.Visible = false;
                        lbl_booked1.Visible = false;
                        lbl_bookingdel1.Visible = false;

                    }
                    else if (Count9 == 0 && Count10 == 0)
                    {
                        MySqlDataAdapter DAd2 = new MySqlDataAdapter("Select confer_time1,confer_time2 from confer_reserv where confer_date1 = '" + Calendar2.SelectedDate.ToString("d").Trim() + "' and confer_hallno1 = '" + txtbx_conferhallnum2.Text.Trim() + "'", connect1);
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

                                data_store = new MySqlCommand("Update confer_reserv set confer_date1 ='" + Calendar2.SelectedDate.ToString("d").Trim() + "'," +
                                "confer_time1='" + txtbx_timefrom2.Text.Trim() + "', confer_time2='" + txtbx_timeto2.Text.Trim() + "'," +
                                "confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                                data_store.ExecuteNonQuery();
                                data_store.Dispose();
                                //connect1.Close();

                                lbl_error1.Visible = false;
                                lbl_error2.Visible = false;
                                lbl_booked1.Visible = true;
                                lbl_bookingdel1.Visible = false;
                                
                                txtbx_conferhallnum2.Text = " ";
                                txtbx_timefrom2.Text = " ";
                                txtbx_timeto2.Text = " ";

                                break;
                            }

                            while (i == timing.Tables[0].Rows.Count - 1 && Timecount1 >= confer_endtime1)
                            {
                                string thisUserID1 = (string)Session["myID1"];
                                string thisuserdept1 = (string)Session["mydept1"];
                                string thisuserfullname1 = (string)Session["myfullname1"];


                                data_store = new MySqlCommand("Update confer_reserv set confer_date1 ='" + Calendar2.SelectedDate.ToString("d").Trim() + "'," +
                                "confer_time1='" + txtbx_timefrom2.Text.Trim() +"', confer_time2='" + txtbx_timeto2.Text.Trim() + "'," +
                                "confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                                data_store.ExecuteNonQuery();
                                data_store.Dispose();
                                //connect1.Close();

                                lbl_error1.Visible = false;
                                lbl_error2.Visible = false;
                                lbl_booked1.Visible = true;
                                lbl_bookingdel1.Visible = false;

                                txtbx_conferhallnum2.Text = " ";
                                txtbx_timefrom2.Text = " ";
                                txtbx_timeto2.Text = " ";

                                break;
                            }

                        }

                    }

                    else if (Count9 > 0 && Count10 == 0)
                    {
                        lbl_error1.Visible = true;
                        lbl_error2.Visible = false;
                        lbl_booked1.Visible = false;
                        lbl_bookingdel1.Visible = false;

                    }
                    else if (Count9 == 0 && Count10 > 0)
                    {
                        lbl_error1.Visible = true;
                        lbl_error2.Visible = false;
                        lbl_booked1.Visible = false;
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

                        data_store = new MySqlCommand("Update confer_reserv set confer_date1 ='" + Calendar2.SelectedDate.ToString("d").Trim() + "', confer_time1='" + txtbx_timefrom2.Text.Trim() + "', confer_time2='" + txtbx_timeto2.Text.Trim() + "', confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                        data_store.ExecuteNonQuery();
                        data_store.Dispose();
                        //connect1.Close();

                        lbl_error1.Visible = false;
                        lbl_error2.Visible = false;
                        lbl_booked1.Visible = true;
                        lbl_bookingdel1.Visible = false;

                        txtbx_conferhallnum2.Text = " ";
                        txtbx_timefrom2.Text = " ";
                        txtbx_timeto2.Text = " ";


                    }
                }
                else
                {
                    string thisUserID1 = (string)Session["myID1"];
                    string thisuserdept1 = (string)Session["mydept1"];
                    string thisuserfullname1 = (string)Session["myfullname1"];

                    data_store = new MySqlCommand("Update confer_reserv set confer_date1='" + Calendar2.SelectedDate.ToString("d").Trim() + "', confer_time1='" + txtbx_timefrom2.Text.Trim() + "', confer_time2='" + txtbx_timeto2.Text.Trim() + "', confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "'  where confer_userid1='" + thisUserID1.Trim() + "'", connect1);
                    data_store.ExecuteNonQuery();
                    data_store.Dispose();
                    //connect1.Close();

                    lbl_error1.Visible = false;
                    lbl_error2.Visible = false;
                    lbl_booked1.Visible = true;
                    lbl_bookingdel1.Visible = false;

                    txtbx_conferhallnum2.Text = " ";
                    txtbx_timefrom2.Text = " ";
                    txtbx_timeto2.Text = " ";


                }
            }
            else if (Count7 < 0 || Count7 > 4)
            {
                lbl_error1.Visible = false;
                lbl_error2.Visible = true;
                lbl_booked1.Visible = false;
                lbl_bookingdel1.Visible = false;

            }
            else if (Timecount1 > Timecount2 || Timecount1 > 2400 || Timecount2 > 2400)
            {
                lbl_error1.Visible = true;
                lbl_error2.Visible = false;
                lbl_booked1.Visible = false;
                lbl_bookingdel1.Visible = false;
            }
        }

        protected void btn_del1_Click(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            string thisUserID1 = (string)Session["myID1"];
            String conferdate = Calendar2.SelectedDate.ToString();

            data_store = new MySqlCommand("DELETE FROM confer_reserv WHERE (confer_date1='"+ conferdate.Trim().Substring(0,10) +"' and confer_time1='" + txtbx_timefrom2.Text.Trim() + "' and confer_time2='" + txtbx_timeto2.Text.Trim() + "' and confer_hallno1='" + txtbx_conferhallnum2.Text.Trim() + "' and confer_userid1='" + thisUserID1.Trim() + "')", connect1);
            data_store.ExecuteNonQuery();
            data_store.Dispose();
            connect1.Close();

            lbl_error1.Visible = false;
            lbl_error2.Visible = false;
            lbl_booked1.Visible = false;
            lbl_bookingdel1.Visible = true;

            txtbx_conferhallnum2.Text = " ";
            txtbx_timefrom2.Text = " ";
            txtbx_timeto2.Text = " ";
        }
    }
}