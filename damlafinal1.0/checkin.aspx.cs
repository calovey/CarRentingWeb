using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace damlafinal1._0
{
    public partial class checkin : System.Web.UI.Page
    {
        DateTime check_in;
        DateTime check_out;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = " ";
            Label2.Text = " ";
            Label3.Text = " ";
            Label4.Text = " ";
            Label5.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DateTime chec_kin = DateTime.Now;
            Label1.Text = "You are checked in!";
            Label4.Text = check_in.ToString("dddd, dd MMMM yyyy HH:mm:ss");
                  }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime check_out = DateTime.Now;
            Label1.Text = "You are checked out!";
            Label3.Text = check_out.ToString("dddd, dd MMMM yyyy HH:mm:ss");
            TimeSpan time_difference = check_in.Subtract(check_out);

            double totalpayment = time_difference.TotalHours;

            if (totalpayment < 1)
            {
                Label5.Text = "14 USD";
            }
            else if (totalpayment > 1 && totalpayment < 2)
            {
                Label5.Text = "28 USD";
            }
            else
            {
                double payment = totalpayment * 31;
                Label5.Text = payment.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}
