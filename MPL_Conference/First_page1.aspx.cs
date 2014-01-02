using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MPL_Conference
{
    public partial class First_page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btn_login1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login_page1.aspx");
        }

        protected void btn_signup1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup_page1.aspx");
        }
    }
}