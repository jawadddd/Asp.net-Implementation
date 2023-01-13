using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace signupSignin
{
    public partial class loginSignupForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9G897PG\\SQLEXPRESS;Initial Catalog=signupProject;Integrated Security=True");
            if(String.IsNullOrWhiteSpace(TextBox1.Text)|| String.IsNullOrWhiteSpace(TextBox2.Text)|| String.IsNullOrWhiteSpace(TextBox3.Text))
            {
                Label5.Text = "Please enter all credentials!";

            }
            else
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from users where email='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                SqlCommand cmd2 = new SqlCommand("SELECT * from users", con);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da.Fill(dt);
                da2.Fill(dt2);
                
                if (dt.Rows.Count >= 1)
                {
                    Label5.Text = "Email already exists,Try again!";
                }
                else
                {
                    if (IsValidEmail(TextBox1.Text.Trim())==true)
                    {
                        Label5.Text = "";
                        int x = dt2.Rows.Count + 1;
                        SqlCommand cmd1 = new SqlCommand(@"Insert into users([userId],[email],[pass])
            Values 
            ('" + x + "','" + TextBox1.Text + "', '" + TextBox2.Text + "')", con);

                        cmd1.ExecuteNonQuery();
                        Response.Redirect("logIn.aspx");
                    }
                    else
                    {
                        Label5.Text = "Invalid email address!";
                    }

                }


            }
            con.Close();
        }
       protected bool IsValidEmail(string email)
        {
            var trimmedEmail = email.Trim();

            if (trimmedEmail.EndsWith("."))
            {
                return false; // suggested by @TK-421
            }
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == trimmedEmail;
            }
            catch
            {
                return false;
            }
        }
    }
}