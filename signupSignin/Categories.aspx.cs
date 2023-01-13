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
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9G897PG\\SQLEXPRESS;Initial Catalog=signupProject;Integrated Security=True");

            SqlDataAdapter sda = new SqlDataAdapter("select * from ProductCategory", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
    }
  
}