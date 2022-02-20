using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;

public partial class dropout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string sname = Session["schoolname"].ToString();
        string query = "select District,School_name,Type_of_School,Student_name,Gender,Birthdate,Standard,Status,Reason,Year_of_Dropout from Student where (Status='Dropout' or Status='Left') and School_name='" + sname + "'";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
        DataTable dataTable = new DataTable();
        dataAdapter.Fill(dataTable);
        dataTable.Columns["School_name"].ColumnName = "School Name";
        dataTable.Columns["Type_of_School"].ColumnName = "Type of School";
        dataTable.Columns["Student_name"].ColumnName = "Student name";
        dataTable.Columns["Year_of_Dropout"].ColumnName = "Year of Dropout";
        GridView1.DataSource = AutoNumberedTable(dataTable);
        GridView1.DataBind();
        cn.Close();
    }



   private DataTable AutoNumberedTable(DataTable SourceTable)

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

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("School.aspx");
    }
}