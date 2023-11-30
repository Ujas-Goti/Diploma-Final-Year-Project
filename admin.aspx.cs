using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;

public partial class admin : System.Web.UI.Page
{
    string aid;
    Mainclass m = new Mainclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            aid = Session["id"].ToString();
            Label1.Text = aid;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
            cn.Open();
            string query;
            query = "select Dist_name,School_name,School_id,Typeofschool,Email from School";
            SqlCommand cmd = new SqlCommand(query, cn);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            dataTable.Columns["Dist_name"].ColumnName = "District";
            dataTable.Columns["School_name"].ColumnName = "School Name";
            dataTable.Columns["Typeofschool"].ColumnName = "Type of School";
            dataTable.Columns["School_id"].ColumnName = "School ID";
            GridView1.DataSource = AutoNumberedTable(dataTable);
            GridView1.DataBind();
            cn.Close();
        }
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("id");
        Response.Redirect("adminlogin.aspx");
    }
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("newschool.aspx");
    }
}