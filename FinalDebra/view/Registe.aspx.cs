using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalDebra.view
{
    public partial class Registe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void register_btn_click(object sender, EventArgs e)
        {
            String selectedValue = DropDownList1.SelectedValue;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[userRegistrationDetails]
           ([userrole]
           ,[username]
           ,[password])
            VALUES('" + selectedValue+"','"+TextBox1.Text+"','"+TextBox2.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registration Successfull');</script>");
            con.Close();
            Response.Redirect("Loging.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loging.aspx");
        }

    }
}