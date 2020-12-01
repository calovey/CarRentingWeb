using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace damlafinal1._0
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection damla = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            damla.Open();
            SqlCommand selectuser = new SqlCommand("select * FROM [parking] WHERE [email]='" + TextBox1.Text + "' and [password]='" + TextBox2.Text + "'");
            selectuser.Connection = damla;

            int temp = Convert.ToInt32(selectuser.ExecuteScalar());

            if (temp > 0)
            {     
                Session["id"] = TextBox1.Text;
                Response.Redirect("checkin.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");

            }
        }
    }
}