using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;

public partial class admission : System.Web.UI.Page
{
    string sid, sname, dname, typofs, bday;
    float standard, siid;
    long aadhar;
    protected void Page_Load(object sender, EventArgs e)
    {
        sid = Session["schoolid"].ToString();
        sname = Session["schoolname"].ToString();
        dname = Session["distname"].ToString();
        typofs = Session["typos"].ToString();
        Label1.Text = dname;
        Label2.Text = sname;
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        bday = TextBox6.Text;
        siid = float.Parse(sid, CultureInfo.InvariantCulture.NumberFormat);
        standard = float.Parse(DropDownList1.SelectedValue, CultureInfo.InvariantCulture.NumberFormat);
        aadhar = long.Parse(TextBox3.Text);
        SqlConnection cn = new SqlConnection();
        string q2="select Aadhar, Status from Student where Aadhar='"+aadhar+"'";
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        DataTable dt = GetData(q2);

        if (dt.Rows.Count==0)
        {
            newadmission();
        }
        else
        {
            if (dt.Rows[0]["Status"].ToString() == "Active")
            {
                Label4.Text = "*Aadhar already registered.";
                Label4.Visible = true;
            }
            else
            {
                newadmission();
            }
        }
        
    }
    private static DataTable GetData(string query)
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
    }

    public void newadmission()
    {
        SqlConnection cn1 = new SqlConnection();
        cn1.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn1.Open();
        string query = "insert into Student(District,School_name,School_id,Student_name,Gender,Aadhar,Birthdate,Standard,Status,Type_of_School) VALUES('" + dname + "','" + sname + "','" + siid + "','" + TextBox1.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + aadhar + "','" + bday + "','" + standard + "','Active','" + typofs + "')";
        SqlCommand cm = new SqlCommand(query, cn1);
        try
        {
            int i = cm.ExecuteNonQuery();
            if (i != 0)
            {
                Panel1.Visible = true;
            }
            else
            {

            }
            cm.Dispose();
        }
        catch
        { }
        cn1.Close();

    }
}