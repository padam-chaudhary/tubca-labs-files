using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAspProject
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"].ToString() == "user")
            {
                lblWelcome.Text = "Welcome " + Session["UserName"].ToString();
            }
            else
            {
                Response.Write("SessionState.aspx");
            }
        }
    }
}