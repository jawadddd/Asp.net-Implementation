using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace signupSignin
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9G897PG\\SQLEXPRESS;Initial Catalog=signupProject;Integrated Security=True");

            SqlDataAdapter sda = new SqlDataAdapter("select productId,productName,productCompany,ProductPrice,AvailableQuantity from products ", con);
          
            DataTable dt = new DataTable();
            sda.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9G897PG\\SQLEXPRESS;Initial Catalog=signupProject;Integrated Security=True");
            String searchtype = TextBox1.Text;
          
            //String Query = "select * from users where email =='"+ searchtype + "';";
            //SqlCommand cmd = new SqlCommand(Query, con);
            //SqlDataReader r;
            
            //con.Open();
            //r = cmd.ExecuteReader();

            ////    Repeater1.DataBind();
            //// Repeater1.DataSource.
            //con.Close();

            SqlDataAdapter sda = new SqlDataAdapter("select productId,productName,productCompany,ProductPrice,AvailableQuantity from products where productName Like '" + searchtype + "'; ", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }


        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx");
        }
    }
}