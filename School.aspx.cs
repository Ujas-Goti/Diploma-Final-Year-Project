using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    string sid, sname, dname, typofs;
    Mainclass m = new Mainclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["schoolid"]==null)
        {
            Response.Redirect("Schoollogin.aspx");
        }
        else
        {
            sid = Session["schoolid"].ToString();
            Label3.Text = sid;
            sname = Session["schoolname"].ToString();
            dname = Session["distname"].ToString();
            typofs = Session["typos"].ToString();

            string q1 = "select Student_name from Student where School_name='" + sname + "' and Status='Active'";
            DataTable dt = m.GetData(q1);
            int c1 = dt.Rows.Count;
            Label1.Text = c1.ToString();
            string q2 = "select Student_name from Student where School_name='" + sname + "' and Status='Dropout'";
            DataTable d2 = m.GetData(q2);
            int c2 = d2.Rows.Count;
            Label2.Text = c2.ToString();
        }
    }

   /* private static DataTable GetData(string query)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        DataTable dt = new DataTable();
        using (SqlCommand cmd = new SqlCommand(query))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = cn;
                sda.SelectCommand = cmd;
                sda.Fill(dt);
            }
            cmd.Dispose();
        }
        cn.Close();
        return dt;
    }*/

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("schoolid");
        Response.Redirect("Schoollogin.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admission.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("registerdropout.aspx");
    }
}