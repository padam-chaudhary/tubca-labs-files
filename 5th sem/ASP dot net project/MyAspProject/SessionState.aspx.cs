using MySql.Data.MySqlClient;
using System;
using System.Web.UI;

namespace MyAspProject
{
    public partial class SessionState : System.Web.UI.Page
    {
        // Replace with your actual MySQL connection string
        string connString = "server=localhost;user id=root;password=yourpassword;database=yourdb";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();

            Session["UserName"] = username;
            Session["Password"] = password;

            using (MySqlConnection con = new MySqlConnection(connString))
            {
                con.Open();
                string sql = "SELECT name, password FROM users WHERE name = @username AND password = @password";
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    using (MySqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            // User found, redirect to welcome page
                            Response.Redirect("Welcome.aspx");
                        }
                        else
                        {
                            // Invalid login
                            Response.Write("<script>alert('Invalid username or password');</script>");
                        }
                    }
                }
            }
        }
    }
}
