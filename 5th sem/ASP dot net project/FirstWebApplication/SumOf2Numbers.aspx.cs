using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication
{
    public partial class SumOf2Numbers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int fnum = int.Parse(txtFirstNumber.Text.Trim());
            int snum = int.Parse(textSecondNumber.Text.Trim());
            // Calculate the sum
            int sum = fnum + snum;

            // Display the result
            txtResult.Text = sum.ToString();

        }
    }
}