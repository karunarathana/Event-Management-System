using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalDebra.view
{
    public partial class User : System.Web.UI.Page
    {
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["user"];
            Label2.Text = (string)Session["user"];
            ShowEventList();
        }
        public void ShowEventList()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * from  organizeEvent", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();

        }
        protected void book_event(object sender, EventArgs e)
        {
            string eventnName = (sender as LinkButton).CommandArgument.ToString();
            Session["eventName"] = eventnName;
            Session["user"] = (string)Session["user"];
            Response.Redirect("Booking.aspx");
        }
    }
}