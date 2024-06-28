using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalDebra.view
{
    public partial class Loging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registe.aspx");
        }

        protected void login_btn_click(object sender, EventArgs e)
        {
            String selectedValue = DropDownList1.SelectedValue;
            String userName = TextBox1.Text;
            String password = TextBox2.Text;

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  userRegistrationDetails WHERE userrole='" + selectedValue + "' AND username='" + userName + "'  AND password='" + password + "' ";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                String userRole = reader["userrole"].ToString();
                String DBuserName = reader["username"].ToString();
                switch (userRole)
                    {
                        case "Admin":
                        Response.Redirect("admin.aspx");
                        break;
                        case "Partner":
                        // code block
                        Session["user"] = DBuserName;
                        Response.Redirect("Partent.aspx");
                        break;
                         case "User":
                        // code block
                        Session["user"] = DBuserName;
                        Response.Redirect("User.aspx");
                        break;
                    }
                Response.Write("<script>alert('Loging Successfull');</script>");
            }
            else {
                Response.Write("<script>alert('Please Check Your Credential');</script>");
            }
        }
    }
}