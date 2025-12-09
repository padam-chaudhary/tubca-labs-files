using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;
using System.Xml.Linq;

namespace WebAppmysql
{

    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Clear all fields on initial page load
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtConfirmPassword.Text = string.Empty;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                // Get form values
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text;

                // Check if user already exists
                if (IsUserExists(email))
                {
                    ShowMessage("Email already registered. Please use a different email.", false);
                    return;
                }

                // Hash the password for security
                string hashedPassword = HashPassword(password);

                // Register the user
                if (RegisterUser(name, email, hashedPassword))
                {
                    // Clear the form
                    txtName.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                    txtConfirmPassword.Text = string.Empty;

                    ShowMessage("Registration successful! You can now login.", true);
                }
                else
                {
                    ShowMessage("Registration failed. Please try again.", false);
                }
            }
            catch (Exception ex)
            {
                ShowMessage("An error occurred: " + ex.Message, false);
            }
        }

        private bool IsUserExists(string email)
        {
            bool userExists = false;
            string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM user WHERE email = @Email";
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", email);

                try
                {
                    connection.Open();
                    int count = Convert.ToInt32(command.ExecuteScalar());
                    userExists = (count > 0);
                }
                catch (Exception)
                {
                    // Handle exception if needed
                    throw;
                }
                finally
                {
                    connection.Close();
                }
            }

            return userExists;
        }

        private bool RegisterUser(string name, string email, string password)
        {
            bool isSuccess = false;
            string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                string query = "INSERT INTO user (name, email, password) VALUES (@Name, @Email, @Password)";
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);

                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    isSuccess = (rowsAffected > 0);
                }
                catch (Exception)
                {
                    // Handle exception if needed
                    throw;
                }
                finally
                {
                    connection.Close();
                }
            }

            return isSuccess;
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // Convert the input string to a byte array and compute the hash
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));

                // Convert byte array to a string
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        private void ShowMessage(string message, bool isSuccess)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = isSuccess ? "message success" : "message error";
            lblMessage.Visible = true;
        }
    }
}