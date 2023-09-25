using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Connectivity
{
    public partial class Connectivity : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Brijesh\\database.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql = "insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("inserted");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = "update student SET  Name='" + TextBox2.Text + "', [Roll No]='" + TextBox3.Text + "' WHERE Id='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("updated");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string sql = "delete from student where Id='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("deleted");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            show();
        }

        public void show()
        {
            string sql = "select * from student";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
        }
    }
}