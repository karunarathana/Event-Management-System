using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace FinalDebra.view
{
    public partial class admin : System.Web.UI.Page
    {
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowEventList();
        }
        public void ShowEventList()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  organizeEvent";
            con.Open();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchItem = TextBox6.Text;
            string partnerName = "Shahika Nimsara";
            bool isData = true;
            ArrayList dataList = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=DEBRA;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  organizeEvent WHERE eventname='" + searchItem + "' AND partnername='" + partnerName + "' ";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            while (reader.Read())
            {
                isData = false;
                TextBox0.Text = reader["eventname"].ToString();
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
    }
}