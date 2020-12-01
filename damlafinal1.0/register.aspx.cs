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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection damla = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand insert = new SqlCommand("Insert into [parking] (fname,email,c_model,c_maker,p_number,color,phone,c_type) values (@fname,@email, @c_model, @c_maker,@p_number,@color,@phone,@c_type)", damla);

            insert.Parameters.AddWithValue("@fname", TextBox1.Text);
            insert.Parameters.AddWithValue("@email", TextBox2.Text);
            insert.Parameters.AddWithValue("@c_model", TextBox3.Text);
            insert.Parameters.AddWithValue("@c_maker", TextBox4.Text);
            insert.Parameters.AddWithValue("@p_number", TextBox5.Text);
            insert.Parameters.AddWithValue("@color", TextBox6.Text);
            insert.Parameters.AddWithValue("@phone", TextBox7.Text);
            insert.Parameters.AddWithValue("@c_type", TextBox8.Text);

            try
            {
                damla.Open();
                insert.ExecuteNonQuery();
                Response.Redirect("login.aspx");

            }
            catch (Exception err)
            {
                LBMsg.Text = err.Message;
            }
        }
    }
}