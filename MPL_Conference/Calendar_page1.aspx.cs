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
    public partial class Calendar_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlDataAdapter DAd1;
        DataSet ds;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void btn_logout5_Click(object sender, EventArgs e)
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

        protected void btn_bmm1_Click(object sender, EventArgs e)
        {
            lbl_time1.Visible = true;
            lbl_timefrom.Visible = true;
            lbl_timeto.Visible = true;
            lbl_notify1.Visible = true;
            lbl_conferhallnum1.Visible = true;
            txtbx_timefrom1.Visible = true;
            txtbx_timeto1.Visible = true;
            txtbx_conferhallnum1.Visible = true;
            btn_submit1.Visible = true;
            btn_submit1.Enabled = true;
        }

        protected void btn_submit1_Click(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            int Count2;
            int.TryParse(txtbx_conferhallnum1.Text, out Count2);
            bool Ishallnumbercorrect = int.TryParse(txtbx_conferhallnum1.Text, out Count2);

            Int32 Timecount1;
            Int32 Timecount2;
            int.TryParse(txtbx_timefrom1.Text, out Timecount1);
            int.TryParse(txtbx_timeto1.Text, out Timecount2);
            bool Istime1correct = int.TryParse(txtbx_timefrom1.Text, out Timecount1);
            bool IsTime2correct = int.TryParse(txtbx_timeto1.Text, out Timecount2);

            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }


            if (Count2 > 0 && Count2 <= 3 && Ishallnumbercorrect == true && Istime1correct == true && IsTime2correct == true && Timecount1 < 2400 && Timecount2 < 2400 && Timecount1 < Timecount2)
            {


                data_store = new MySqlCommand("Select confer_hallno1 from confer_reserv where confer_hallno1='" + txtbx_conferhallnum1.Text + "'", connect1);
                string conferhallnumber = Convert.ToString(data_store.ExecuteScalar());
                data_store.Dispose();

                data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + Calendar1.SelectedDate.ToString("d").Trim() + "'", connect1);
                int Count3 = Convert.ToInt32(data_store.ExecuteScalar());
                data_store.Dispose();

                
                data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_hallno1 ='" + txtbx_conferhallnum1.Text.Trim() + "'", connect1);
                int Count6 = Convert.ToInt32(data_store.ExecuteScalar());
                data_store.Dispose();
                

                if (Count3 > 0 && Count6 > 0)
                {
                    while (connect1.State == System.Data.ConnectionState.Closed)
                    {
                        connect1.Open();
                    }

                    data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + Calendar1.SelectedDate.ToString("d").Trim() + "' AND confer_time1 = '" + txtbx_timefrom1.Text + "'", connect1);
                    int Count4 = Convert.ToInt32(data_store.ExecuteScalar());
                    data_store.Dispose();

                    data_store = new MySqlCommand("Select Count(*) from confer_reserv where confer_date1='" + Calendar1.SelectedDate.ToString("d").Trim() + "' AND confer_time2 = '" + txtbx_timeto1.Text + "'", connect1);
                    int Count5 = Convert.ToInt32(data_store.ExecuteScalar());
                    data_store.Dispose();

                    if (Count4 > 0 && Count5 > 0)
                    {
                        lbl_error1.Visible = true;
                        lbl_booked1.Visible = false;
                        lbl_error2.Visible = false;
                    }
                    else if (Count4 == 0 && Count5 == 0)
                    {
                        while (connect1.State == System.Data.ConnectionState.Closed)
                        {
                            connect1.Open();
                        }

                        MySqlDataAdapter DAd2 = new MySqlDataAdapter("Select confer_time1,confer_time2 from confer_reserv where confer_date1 = '" + Calendar1.SelectedDate.ToString("d").Trim() + "' AND confer_hallno1 = '" + txtbx_conferhallnum1.Text.Trim() + "' order by confer_time1", connect1);
                        DataSet timing = new DataSet();
                        DAd2.Fill(timing);
                        int i;

                        for (i = 0; i <= timing.Tables[0].Rows.Count - 1; i++)
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


                                data_store = new MySqlCommand("Insert InTo confer_reserv(confer_date1,confer_time1,confer_time2,confer_hallno1,confer_userid1," +
                                "confer_department,confer_bookedby1) Values('" + Calendar1.SelectedDate.ToString("d").Trim() + "','" + txtbx_timefrom1.Text.ToString().Trim() + "'," +
                                "'" + txtbx_timeto1.Text.Trim() + "','" + txtbx_conferhallnum1.Text.Trim() + "','" + thisUserID1.Trim() + "'," +
                                "'" + thisuserdept1.Trim() + "','" + thisuserfullname1.Trim() + "')", connect1);
                                data_store.ExecuteNonQuery();
                                data_store.Dispose();
                                //connect1.Close();

                                lbl_booked1.Visible = true;
                                lbl_error2.Visible = false;
                                lbl_error1.Visible = false;

                                txtbx_conferhallnum1.Text = " ";
                                txtbx_timefrom1.Text = " ";
                                txtbx_timeto1.Text = " ";

                                break;
                            }


                            while (i == timing.Tables[0].Rows.Count - 1 && Timecount1 >= confer_endtime1)
                            {
                                string thisUserID1 = (string)Session["myID1"];
                                string thisuserdept1 = (string)Session["mydept1"];
                                string thisuserfullname1 = (string)Session["myfullname1"];


                                data_store = new MySqlCommand("Insert InTo confer_reserv(confer_date1,confer_time1,confer_time2,confer_hallno1,confer_userid1," +
                                "confer_department,confer_bookedby1) Values('" + Calendar1.SelectedDate.ToString("d").Trim() + "','" + txtbx_timefrom1.Text.ToString().Trim() + "'," +
                                "'" + txtbx_timeto1.Text.Trim() + "','" + txtbx_conferhallnum1.Text.Trim() + "','" + thisUserID1.Trim() + "'," +
                                "'" + thisuserdept1.Trim() + "','" + thisuserfullname1.Trim() + "')", connect1);
                                data_store.ExecuteNonQuery();
                                data_store.Dispose();
                                //connect1.Close();

                                lbl_booked1.Visible = true;
                                lbl_error2.Visible = false;
                                lbl_error1.Visible = false;

                                txtbx_conferhallnum1.Text = " ";
                                txtbx_timefrom1.Text = " ";
                                txtbx_timeto1.Text = " ";

                                break;
                            }
                        }
                    }
                    else if (Count4 > 0 && Count5 == 0)
                    {
                        lbl_error1.Visible = true;
                        lbl_booked1.Visible = false;
                        lbl_error2.Visible = false;
                    }
                    else if (Count4 == 0 && Count5 > 0)
                    {
                        lbl_error1.Visible = true;
                        lbl_booked1.Visible = false;
                        lbl_error2.Visible = false;
                    }
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

                    data_store = new MySqlCommand("Insert InTo confer_reserv(confer_date1,confer_time1,confer_time2,confer_hallno1,confer_userid1," +
                    "confer_department,confer_bookedby1) Values('" + Calendar1.SelectedDate.ToString("d").Trim() + "','" + txtbx_timefrom1.Text.Trim() + "'," +
                    "'" + txtbx_timeto1.Text.Trim() + "','" + txtbx_conferhallnum1.Text.Trim() + "','" + thisUserID1.Trim() + "'," +
                    "'" + thisuserdept1.Trim() + "','" + thisuserfullname1.Trim() + "')", connect1);
                    data_store.ExecuteNonQuery();
                    data_store.Dispose();


                    lbl_booked1.Visible = true;
                    lbl_error2.Visible = false;
                    lbl_error1.Visible = false;

                    txtbx_conferhallnum1.Text = " ";
                    txtbx_timefrom1.Text = " ";
                    txtbx_timeto1.Text = " ";
                }
            }
            else if (Count2 < 0 || Count2 > 4)
            {
                lbl_error2.Visible = true;
                lbl_booked1.Visible = false;
                lbl_error1.Visible = false;
            }
            else if (Timecount1 > Timecount2 || Timecount1 > 2400 || Timecount2 > 2400)
            {
                lbl_booked1.Visible = false;
                lbl_error2.Visible = false;
                lbl_error1.Visible = true;
            }
            connect1.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //String confer_date = Calendar1.SelectedDate.ToString("d");

            connect1.Open();

            DAd1 = new MySqlDataAdapter("Select confer_time1 as 'Start',confer_time2 as 'End',confer_hallno1 as 'Conference Hall',confer_department as 'Department' from confer_reserv where confer_date1 = '" + Calendar1.SelectedDate.ToString("d").Trim() + "'order by confer_time1", connect1);
            ds = new DataSet();
            DAd1.Fill(ds);
            if (ds == null)
            {
                lbl_notify2.Visible = true;
            }
            else
            {
                lbl_notify2.Visible = false;

                grid_conferstatus1.DataSource = ds;
                grid_conferstatus1.DataBind();
                connect1.Close();

                grid_conferstatus1.Visible = true;
            }


            lbl_time1.Visible = false;
            lbl_timefrom.Visible = false;
            lbl_timeto.Visible = false;
            lbl_notify1.Visible = false;
            lbl_conferhallnum1.Visible = false;
            txtbx_timefrom1.Visible = false;
            txtbx_timeto1.Visible = false;
            txtbx_conferhallnum1.Visible = false;
            btn_submit1.Visible = false;
            btn_submit1.Enabled = false;
            lbl_error1.Visible = false;
            lbl_error2.Visible = false;
            lbl_booked1.Visible = false;

        }

        protected void btn_emb1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CalendarisedMyBookingStatus_page1.aspx");
        }

    }
}