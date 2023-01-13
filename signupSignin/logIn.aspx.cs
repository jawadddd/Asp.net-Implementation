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
    public partial class logIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9G897PG\\SQLEXPRESS;Initial Catalog=signupProject;Integrated Security=True");
            if (String.IsNullOrWhiteSpace(TextBox1.Text) || String.IsNullOrWhiteSpace(TextBox2.Text) )
            {
                Label5.Text = "Please enter all credentials!";

            }
            else
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from users where email='" + TextBox1.Text.Trim() + "' AND pass='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    Label5.Text = "Successfully, Logged In!";
                    Response.Redirect("search.aspx");
                }
                else
                {
                    Label5.Text = "No user Registered under these credentials!";
                }
            }
            con.Close();
        }
    }
    
}