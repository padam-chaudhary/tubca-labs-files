using System;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace MyAspProject
{
    public partial class SimpleInterest : Page
    {
        string connString = "server=localhost;user id=root;password=11111111;database=dotnetdb";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Read values from the form
            decimal principal = Convert.ToDecimal(txtPrincipal.Text);
            decimal rate = Convert.ToDecimal(txtRate.Text);
            decimal time = Convert.ToDecimal(txtTime.Text);

            // Calculate Simple Interest
            decimal interest = (principal * rate * time) / 100;

            // Insert into DB (optional)
            using (MySqlConnection con = new MySqlConnection(connString))
            {
                con.Open();
                string sql = "INSERT INTO SimpleInterestRecords (Principal, Rate, Time, Interest) VALUES (@p, @r, @t, @i)";
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@p", principal);
                    cmd.Parameters.AddWithValue("@r", rate);
                    cmd.Parameters.AddWithValue("@t", time);
                    cmd.Parameters.AddWithValue("@i", interest);

                    cmd.ExecuteNonQuery();
                }
            }

            // Redirect with query string
            Response.Redirect("Result.aspx?interest=" + interest);
        }
    }
}
