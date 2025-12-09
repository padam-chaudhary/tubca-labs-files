using MySql.Data.MySqlClient;
using System;
using System.Web.UI;

namespace MyAspProject
{
    public partial class AdditionForm : Page
    {
        string connString = "Server=localhost;Database=dotnetdb;Uid=root;Pwd=11111111;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                lblMessage.Text = Session["UserName"].ToString();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connString))
                {
                    string sql = "INSERT INTO users (name, email, gender) VALUES (@name, @email, @gender)";
                    MySqlCommand cmd = new MySqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@gender", rbtnGender.SelectedValue);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Data Saved Successfully!";
                    BindGrid();
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connString))
                {
                    string sql = "SELECT * FROM users WHERE id = @id";
                    MySqlCommand cmd = new MySqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@id", int.Parse(txtID.Text.Trim()));

                    con.Open();
                    MySqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtName.Text = dr["name"].ToString();
                        txtEmail.Text = dr["email"].ToString();
                        rbtnGender.SelectedValue = dr["gender"].ToString();
                        lblMessage.Text = "";
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "User not found!";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connString))
                {
                    string sql = "UPDATE users SET name = @name, email = @email, gender = @gender WHERE id = @id";
                    MySqlCommand cmd = new MySqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@gender", rbtnGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@id", int.Parse(txtID.Text.Trim()));

                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Data Updated Successfully!";
                    BindGrid();
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connString))
                {
                    string sql = "DELETE FROM users WHERE id = @id";
                    MySqlCommand cmd = new MySqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@id", int.Parse(txtID.Text.Trim()));

                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Data Deleted Successfully!";
                    BindGrid();
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

        private void BindGrid()
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connString))
                {
                    string sql = "SELECT * FROM users";
                    using (MySqlCommand cmd = new MySqlCommand(sql, con))
                    {
                        con.Open();
                        using (MySqlDataReader dr = cmd.ExecuteReader())
                        {
                            gvUserInfo.DataSource = dr;
                            gvUserInfo.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error loading grid: " + ex.Message;
            }
        }
    }
}
