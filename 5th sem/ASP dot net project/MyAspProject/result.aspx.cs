using System;
using System.Web.UI;

namespace MyAspProject
{
    public partial class Result : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.QueryString["interest"] != null)
            {
                lblInterest.Text = Request.QueryString["interest"];
            }
            else
            {
                lblInterest.Text = "No interest calculated.";
            }
        }
    }
}
