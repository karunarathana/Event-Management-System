using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FinalDebra.view
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["user"];
        }
        protected void checkTotal(object sender, EventArgs e)
        {
            String eventName = (string)Session["eventName"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  organizeEvent WHERE eventname='" + eventName + "'";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                String name = reader["eventName"].ToString();
                String price = reader["price"].ToString();
                String place = reader["venue"].ToString();
                String shed = reader["schedule"].ToString();

                Session["event"] = name;
                Session["place"] = place;
                Session["time"] = shed;

                calcTotal(name, price);
            }
            else
            {
                Response.Write("<script>alert('Please Check Your Credential');</script>");
            }
        }
        public void calcTotal(String x, String y)
        {
            int qontity = int.Parse(TextBox4.Text);
            double price = Double.Parse(y);
            double subTotal = qontity * price;
            double total = subTotal + 100;
            Label3.Text = subTotal.ToString() + " $";
            Label2.Text = x;
            Label4.Text = "+100.00 $";
            Label5.Text = total.ToString() + " $";
            Session["qon"] = qontity.ToString();
        }
        protected void pay_of_book(object sender, EventArgs e)
        {
            //Local Varibles defined
            String eventPrice = "";
            String eventTotal = "";
            String sellTickets = "";

            String eventName = (string)Session["eventName"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  ticketselling WHERE eventname='" + eventName + "'";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            if (reader.Read())
            {

                eventPrice = reader["price"].ToString();
                eventTotal = reader["total"].ToString();
                sellTickets = (reader["sellingticket"].ToString());
            }
            reader.Close();
            updateDatabase(eventPrice, eventTotal, sellTickets);
            Session["user"] = (string)Session["user"];
            Response.Redirect("PrintTicket.aspx");
        }
        public void updateDatabase(String x,String y,String z) {
            //Local Varibles defined
            int qontity = int.Parse(TextBox4.Text);
            double calTotal = (double.Parse(x) * qontity);
            double databseTotal = (double.Parse(y));

            double fullTotal = calTotal+databseTotal;

            String eventTotal = fullTotal.ToString()+".00" ;
            String sellTickets = (qontity+ int.Parse(z)).ToString();

            String eventName = (string)Session["eventName"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "UPDATE ticketselling SET sellingticket ='" + sellTickets + "',total ='" + eventTotal + "' WHERE eventname='" + eventName + "'";
            con.Open();
            cmd.ExecuteNonQuery();

        }
    

    }
}