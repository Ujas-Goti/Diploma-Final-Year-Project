using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

public partial class editstudent : System.Web.UI.Page
{
    static string name, bday, status, reason, st1;
    string upq;
    static long aadhar,yod;
    float std;
    protected void Page_Load(object sender, EventArgs e)
    {
        string school = Session["schoolname"].ToString();
        string query = "select * from Student where School_name='"+school+"'";
        DataTable dataTable = GetData(query);
        dataTable.Columns["School_name"].ColumnName = "School Name";
        dataTable.Columns["Type_of_School"].ColumnName = "Type of School";
        dataTable.Columns["Student_name"].ColumnName = "Student name";
        dataTable.Columns["Year_of_Dropout"].ColumnName = "Year of Dropout";
        GridView1.DataSource = AutoNumberedTable(dataTable);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        aadhar = long.Parse(TextBox1.Text);
        SqlConnection cn = new SqlConnection();
        string q2 = "select * from Student where Aadhar='" + aadhar + "'";
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        DataTable dt =GetData(q2);

        if (dt.Rows.Count == 0)
        {
            Label1.Text = "*Student does'nt exist.";
            Panel2.Visible = false;
        }
        else
        {
            Label1.Visible = false;
            Label2.Text = dt.Rows[0]["District"].ToString();
            Label3.Text = dt.Rows[0]["School_name"].ToString();
            TextBox2.Text = dt.Rows[0]["Student_name"].ToString();
            Label5.Text = dt.Rows[0]["Gender"].ToString();
            Label4.Text = dt.Rows[0]["Aadhar"].ToString();
            TextBox6.Text = dt.Rows[0]["Birthdate"].ToString();
            TextBox3.Text = dt.Rows[0]["Standard"].ToString();
            st1 = dt.Rows[0]["Status"].ToString();
            TextBox4.Text = st1;
            if (st1 != "Active")
            {
                TextBox5.Text = dt.Rows[0]["Year_of_Dropout"].ToString();
                TextBox7.Text = dt.Rows[0]["Reason"].ToString();
            }
            else
            {
                TextBox7.Enabled = false;
                TextBox5.Enabled = false;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
       
        bday = TextBox6.Text;
        status = TextBox4.Text;
        std = float.Parse(TextBox3.Text, CultureInfo.InvariantCulture.NumberFormat);
       if (st1 != "Active")
        {
            yod = long.Parse(TextBox5.Text);
            reason = TextBox7.Text;
            upq = "update Student set Student_name='" + name + "',Birthdate='" + bday + "',Standard='" + std + "',Status='" + status + "',Reason='" + reason + "',Year_of_Dropout='" + yod + "' where Aadhar='" + aadhar + "' ";
        }
        else
        {
            upq = "update Student set Student_name='" + name + "',Birthdate='" + bday + "',Standard='" + std + "',Status='" + status + "' where Aadhar='" + aadhar + "' ";
        }
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        SqlCommand cmd = new SqlCommand(upq, cn);
        cmd.ExecuteNonQuery();
        Label6.Text = "Updated Successfully";
        cmd.Dispose();
        cn.Close();
    }
    public DataTable AutoNumberedTable(DataTable SourceTable)

    {
        DataTable ResultTable = new DataTable();
        DataColumn AutoNumberColumn = new DataColumn();
        AutoNumberColumn.ColumnName = "S.No";
        AutoNumberColumn.DataType = typeof(int);
        AutoNumberColumn.AutoIncrement = true;
        AutoNumberColumn.AutoIncrementSeed = 1;
        AutoNumberColumn.AutoIncrementStep = 1;
        ResultTable.Columns.Add(AutoNumberColumn);
        ResultTable.Merge(SourceTable);
        return ResultTable;

    }
    public void runquery(string q)
    {
        
    }
    public DataTable GetData(string query)
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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
    
    }
}