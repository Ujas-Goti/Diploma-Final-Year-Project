using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adminlogin : System.Web.UI.Page
{
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = TextBox1.Text;
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        string sql = "select * from Admin1 where ID='" + s + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            try
            {
                sql = "select Password,Email from Admin1 where ID='" + s + "'";
                cmd = new SqlCommand(sql, cn);
                DataTable d1 = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                sda.Fill(d1);
                string pass = d1.Rows[0]["Password"].ToString();
                if (pass == TextBox2.Text)
                {
                    Session["id"] = s;
                    Session["email"] = d1.Rows[0]["Email"].ToString();
                    Response.Redirect("admin.aspx");

                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Incorrect Password.";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Unhandled Exception : " + ex;
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Incorrect Username.";
        }
        cmd.Dispose();
        cn.Close();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        s = TextBox1.Text;
        Session["id"] = s;
    }
}