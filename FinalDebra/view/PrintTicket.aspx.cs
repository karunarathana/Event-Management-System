using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalDebra.view
{
    public partial class PrintTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = (string)Session["user"];
            Label1.Text = (string)Session["event"];
            Label3.Text = (string)Session["place"];
            Label4.Text = (string)Session["time"];
            Label5.Text = (string)Session["qon"];
        }
        protected void back_main(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }
    }
}