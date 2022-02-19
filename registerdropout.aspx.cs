using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;
public partial class registerdropout : System.Web.UI.Page
{
    Mainclass m = new Mainclass();
    long aadhar,yod;
    string reason;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        aadhar = long.Parse(TextBox1.Text);
        SqlConnection cn = new SqlConnection();
        string q2 = "select Aadhar,Student_name,Standard,Status from Student where Aadhar='" + aadhar + "'";
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        DataTable dt = m.GetData(q2);

        if (dt.Rows.Count == 0)
        {
            Label1.Text = "*Student does'nt exist.";
        }
        else {
            if (dt.Rows[0]["Status"].ToString() == "Dropout")
            {
                Label1.Text = "*Student already Dropped out.";
            }
            else if(dt.Rows[0]["Status"].ToString() == "Left")
            {
                Label1.Text = "*Student already Left the school.";
            }
            else
            {
                Panel1.Visible = true;
                Label2.Text = dt.Rows[0]["Aadhar"].ToString();
                Label3.Text = dt.Rows[0]["Student_name"].ToString();
                Label4.Text = dt.Rows[0]["Standard"].ToString();
                yod = DateTime.Now.Year;
                Label5.Text = yod.ToString();
            }
        }
    }
    /*private static DataTable GetData(string query)
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        string query = "update student set Status='Dropout',Reason='" + DropDownList1.SelectedValue.ToString() +"',Year_of_Dropout='"+yod+"' where Aadhar='"+aadhar+"'";
        bool a =  m.runquery(query);
        if (a==true)
        {
            Panel2.Visible = true;
        }

    }
   /* public void runquery(string q)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        SqlCommand cmd = new SqlCommand(q, cn);
        try
        {
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                Panel1.Visible = true;
            }
            else
            {

            }
            cmd.Dispose();
        }
        catch
        { }
        cn.Close();
    }*/
}