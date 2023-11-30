using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dataview : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["d"] == null)
        {
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
            cn.Open();
            string d, s, r, y,tc, query;

            d = Session["d"] as string;
            s = Session["s"] as string;
            r = Session["r"] as string;
            y = Session["y"] as string;
            tc = Session["ct"] as string;
            query = "select District,School_name,Type_of_School,Student_name,Gender,Birthdate,Caste,Standard,Reason,Year_of_Dropout from Student where Status='Dropout' " + d + " " + s + " " + r + " " + y + " "+tc+"";

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("d");
        Session.Remove("r");
        Session.Remove("s");
        Session.Remove("y");
        Session.Remove("ct");
        Response.Redirect("Homepage.aspx");
    }
   
}