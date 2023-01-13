using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace signupSignin
{
    public partial class ADDpRODUCTwITHiMAGE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9G897PG\\SQLEXPRESS;Initial Catalog=signupProject;Integrated Security=True");
            con.Open();

            HttpPostedFile postedFile = FileUpload1.PostedFile;
            String Filename = Path.GetFileName(postedFile.FileName);
            String Fileextension = Path.GetExtension(Filename);
            int fileSize = postedFile.ContentLength;
            if(Fileextension.ToLower()==".jpg"|| Fileextension.ToLower() == ".bmp"||Fileextension.ToLower() == ".gif" || Fileextension.ToLower() == ".png" )
            {
                Stream s = postedFile.InputStream;
                BinaryReader b = new BinaryReader(s);
                byte[] bytes = b.ReadBytes((int)s.Length);
                
//                String one = "jawadHaider123";
                SqlCommand cmd = new SqlCommand("Insert into Extra(name,pic) values('huhu',"+bytes+");", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }

    }
}