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
    public partial class partner : System.Web.UI.Page
    {
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            VALUES('"+TextBox0.Text+"','"+TextBox1.Text+"','"+TextBox2.Text + "','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Successfull Add Event');</script>");
            con.Close();
        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchItem = TextBox6.Text;
            bool isData = true;
            ArrayList dataList = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  organizeEvent WHERE eventname='" + searchItem + "'";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            while (reader.Read())
            {
                isData = false;
                TextBox0.Text = reader["eventname"].ToString();
                TextBox1.Text = ("Mr."+reader["partnername"].ToString());
                TextBox2.Text = (reader["venue"].ToString());
                TextBox3.Text = (reader["schedule"].ToString());
                TextBox4.Text = ("RS:"+reader["price"].ToString());
                TextBox5.Text = (reader["contact"].ToString());
            }
            reader.Close();

            if (isData)
            {

                Response.Write("<script>alert('Not Found Data');</script>");
            }


        }
        protected void update_Click(object sender, EventArgs e)
        {
            string searchItem = TextBox6.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "UPDATE organizeEvent SET eventname ='" + TextBox0.Text + "',partnername ='" + TextBox1.Text + "',venue='" + TextBox2.Text + "',schedule = '" + TextBox3.Text + "',price='" + TextBox4.Text + "',contact ='"+TextBox5.Text+ "'   WHERE eventname='" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('SuccessFull Update');</script>");

        }
        protected void delete_Click(object sender, EventArgs e)
        {
            string searchItem = TextBox6.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "DELETE FROM organizeEvent WHERE eventname = '" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            TextBox0.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Response.Write("<script>alert('Sucessfull Deleted');</script>");
        }


    }
}