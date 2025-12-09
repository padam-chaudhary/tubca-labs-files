using System;
using System.Configuration;
using System.Data.SqlClient; // Changed from Devart.Data.SqlServer
using System.Drawing;
using System.Security.Cryptography;
using System.Text;

namespace WebFormSqlServer
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = HashPassword(txtPassword.Text.Trim());
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //string connStr = "Data Source = PADAM\\SQLEXPRESS02; Initial Catalog = aspdotnetdb; Integrated Security = True;";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Users (name, email, password) VALUES (@name, @email, @password)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", username); // Using AddWithValue is simpler
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@password", password);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Registration successful!";
                }
                catch (SqlException ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}