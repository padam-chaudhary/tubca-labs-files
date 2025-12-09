using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication
{
    public partial class simpleForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = txtId.Text;
            string name = txtName.Text;
            string email = txtEmail.Text;
            string gender = "";

            if (rdoMale.Checked) gender = "Male";
            else if (rdoFemale.Checked) gender = "Female";
            else if (rdoOther.Checked) gender = "Other";

            string connStr = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO users (id, name, email, gender) VALUES (@id, @name, @email, @gender)";
                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.ExecuteNonQuery();

                    lblResult.Text = "Data inserted successfully!";
                }
                catch (Exception ex)
                {
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = "Error: " + ex.Message;
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string id = txtId.Text;

            string connStr = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                try
                {
                    conn.Open();
                    string query = "SELECT name, email, gender FROM users WHERE id = @id";
                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@id", id);

                    MySqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        txtName.Text = reader["name"].ToString();
                        txtEmail.Text = reader["email"].ToString();
                        string gender = reader["gender"].ToString();

                        // Set gender radio button based on value
                        rdoMale.Checked = (gender == "Male");
                        rdoFemale.Checked = (gender == "Female");
                        rdoOther.Checked = (gender == "Other");

                        lblResult.ForeColor = System.Drawing.Color.Green;
                        lblResult.Text = "User found!";
                    }
                    else
                    {
                        lblResult.ForeColor = System.Drawing.Color.Red;
                        lblResult.Text = "User not found!";
                        txtName.Text = "";
                        txtEmail.Text = "";
                        rdoMale.Checked = false;
                        rdoFemale.Checked = false;
                        rdoOther.Checked = false;
                    }
                }
                catch (Exception ex)
                {
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}