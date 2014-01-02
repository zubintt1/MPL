using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Drawing;
using System.Windows;
using System.Net;
using System.Net.Sockets;
using System.Text;

using MySql.Data.MySqlClient;
using System.Configuration;


namespace MPL_Conference
{
    public partial class Chat_page1 : System.Web.UI.Page
    {
        MySqlCommand data_store;
        MySqlConnection connect1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["database_main_connection1"].ConnectionString.ToString());

        Socket sck1;
        EndPoint end_local, end_remote;

        protected void Page_Load(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            sck1 = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
            sck1.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.ReuseAddress, true);

            string thisUserID1 = (string)Session["myID1"];

            String LocalIP2 = Chat_page1.LocalIpAddress();

            data_store = new MySqlCommand("Update user_detailsstored set user_localipaddress1 ='" +LocalIP2.Trim()+ "' where user_id1='" + thisUserID1.Trim() + "'", connect1);
            data_store.ExecuteNonQuery();
            data_store.Dispose();

            connect1.Close();
        }
                  
        public static string LocalIpAddress()
        {
            IPHostEntry hostname;
            string LocalIp = "";
            hostname = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in hostname.AddressList)
            {
                LocalIp = ip.ToString();
                if (ip.AddressFamily == AddressFamily.InterNetwork && ip.AddressFamily.ToString() == "InterNetwork")
                {
                    break;
                }
                else
                {
                    LocalIp = null;
                }
            }
            return LocalIp;
        }

        
        private void MessageProcess(IAsyncResult syc)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            int msg_size = sck1.EndReceiveFrom(syc, ref end_remote);
            if (msg_size > 0)
            {
                byte[] received_msgdata = new byte[2048];
                received_msgdata = (byte[])syc.AsyncState;

                ASCIIEncoding msg_coding = new ASCIIEncoding();
                string received_msg = msg_coding.GetString(received_msgdata);
                lsbx_msg1.Items.Add(chkbxlst_onlineuser1.SelectedValue + received_msgdata);
            }

            byte[] msg_buffer = new byte[2100];
            sck1.BeginReceiveFrom(msg_buffer, 0,msg_buffer.Length, SocketFlags.None, ref end_remote, new AsyncCallback(MessageProcess), msg_buffer);

        }

        protected void rbtnlst_dept1_SelectedIndexChanged(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            string chat_dept1 = Convert.ToString(rbtnlst_dept1.SelectedItem.Text);

            data_store = new MySqlCommand("Select Count(*) from user_detailsstored where user_department1 = '" + chat_dept1.Trim() + "' and user_loggedinstatus ='1'", connect1);
            int Count10 = Convert.ToInt32(data_store.ExecuteScalar());
            data_store.Dispose();

            chkbxlst_onlineuser1.Items.Clear();

            string[] users = new string[Count10];

            for (int i = 0; i < Count10; i++)
            {
                data_store = new MySqlCommand("Select user_fullname1 from user_detailsstored where user_department1 = '" + chat_dept1.Trim() + "' and user_loggedinstatus = '1'", connect1);
                users[i] = Convert.ToString(data_store.ExecuteScalar());

                /*
                string[] users = new string[(Convert.ToString(data_store.ExecuteScalar())).Length];
                */
                
                data_store.Dispose();

                chkbxlst_onlineuser1.Items.Add(users[i]);
            }
            //experimental basis
            txtbx_chatmsg1.Text = Convert.ToString (Count10);
            //

            chkbxlst_onlineuser1.Visible = true;

        }

        protected void btn_logout4_Click(object sender, EventArgs e)
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

        protected void chkbxlst_onlineuser1_SelectedIndexChanged(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            UdpClient msgclient = new UdpClient(0);

            string localport = Convert.ToString(((IPEndPoint)msgclient.Client.LocalEndPoint).Port.ToString());
            string remoteip = Request.ServerVariables["REMOTE_ADDR"];

            string remoteport = Request.ServerVariables["REMOTE_PORT"];

            end_local = new IPEndPoint(IPAddress.Parse(LocalIpAddress().Trim()), Convert.ToInt32(localport));
            sck1.Bind(end_local);

            end_remote = new IPEndPoint(IPAddress.Parse(remoteip.Trim()), Convert.ToInt32(remoteport));
            sck1.Connect(end_remote);

            byte[] msg_buffer = new byte[2100];
            sck1.BeginReceiveFrom(msg_buffer, 0,msg_buffer.Length, SocketFlags.None, ref end_remote, new AsyncCallback(MessageProcess), msg_buffer);

            btn_msgsend1.Visible = true;
            btn_msgsend1.Enabled = true;
            txtbx_chatmsg1.Visible = true;
            txtbx_chatmsg1.Focus();
        }

        protected void btn_msgsend1_Click(object sender, EventArgs e)
        {
            while (connect1.State == System.Data.ConnectionState.Closed)
            {
                connect1.Open();
            }

            System.Text.ASCIIEncoding msg_coding2 = new System.Text.ASCIIEncoding();
            byte[] msg = new byte[2100];
            msg = msg_coding2.GetBytes(txtbx_chatmsg1.Text);

            sck1.Send(msg);

            string thisuserfullname1 = (string)Session["myfullname1"];

            lsbx_msg1.Items.Add(thisuserfullname1 + txtbx_chatmsg1.Text);
            txtbx_chatmsg1.Text = null;
        }                        
    }
}