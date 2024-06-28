using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalDebra.view
{
    public partial class Partent : System.Web.UI.Page
    {
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["user"];
            Label2.Text = (string)Session["user"];
            ShowData();
            ShowDataSellingTickets();
        }
        protected void insertData(object sender, EventArgs e)
        {
            

                SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[organizeEvent]
               ([eventname]
               ,[partnername]
               ,[venue]
               ,[schedule]
               ,[price]
               ,[contact])
                VALUES('" + eventname.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                insertTicketSelling();
                Response.Write("<script>alert('Successfull Add Event');</script>");
                ShowData();
                con.Close();
     
           
          
        }
        protected void insertTicketSelling()
        {
            String commission = "10%";
            String sellTicket = "0";
            String total = "0";

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[ticketselling]
              ([partnername]
               ,[eventname]
               ,[venue]
               ,[price]
               ,[commision]
               ,[sellingticket]
               ,[total])
                VALUES('" + TextBox1.Text + "','" + eventname.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + commission + "','" + sellTicket + "','"+ total + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            ShowData();
            ShowDataSellingTickets();
            con.Close();



        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchItem = TextBo6.Text;
            string partnerName = (string)Session["user"];
            bool isData = true;
            ArrayList dataList = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  organizeEvent WHERE eventname='" + searchItem + "' AND partnername='"+ partnerName + "' ";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            while (reader.Read())
            {
                isData = false;
                eventname.Text = reader["eventname"].ToString();
                TextBox1.Text = (reader["partnername"].ToString());
                TextBox2.Text = (reader["venue"].ToString());
                TextBox3.Text = (reader["schedule"].ToString());
                TextBox4.Text = (reader["price"].ToString());
                TextBox5.Text = (reader["contact"].ToString());
            }
            reader.Close();

            if (isData)
            {

                Response.Write("<script>alert('Not Found Data');</script>");
            }


        }
        public void ShowData()
        {
            string searchItem = (string)Session["user"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  organizeEvent WHERE partnername='" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public void ShowDataSellingTickets()
        {
            string searchItem = (string)Session["user"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  ticketselling WHERE partnername='" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void update_Click(object sender, EventArgs e)
        {
            string searchItem = TextBo6.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "UPDATE organizeEvent SET eventname ='" + eventname.Text + "',partnername ='" + TextBox1.Text + "',venue='" + TextBox2.Text + "',schedule = '" + TextBox3.Text + "',price='" + TextBox4.Text + "',contact ='" + TextBox5.Text + "' WHERE eventname='" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            ShowData();
            Response.Write("<script>alert('SuccessFull Update');</script>");

        }
        protected void delete_Click(object sender, EventArgs e)
        {
            string searchItem = search.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "DELETE FROM organizeEvent WHERE eventname = '" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            ShowData();
            eventname.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Response.Write("<script>alert('Sucessfull Deleted');</script>");
        }

    }
}