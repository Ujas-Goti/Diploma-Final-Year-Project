using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class Default2 : System.Web.UI.Page
{
    static string s, d, r, y,d1,s1,y1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        School.Items.Add("Select School");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        d = District.SelectedValue.ToString();
        s = School.SelectedValue.ToString();
        y = Year.SelectedValue.ToString();
        
        string dc = "Select District";
        string sc = "Select School";
        string yc = "Select Year";
       

        d1 = " ";
        s1 = " ";
        y1 = " ";


        if (d != dc)
        {
            d1 = " and District='" + d + "'";
        }
        if (s != sc)
        {
            s1= " and School_name='" + s + "'";
        }
        if (y != yc)
        {
            y1= " and Year_of_Dropout='" + y + "'";
        }
        Panel1.Visible = true;
        
       int count = 0;
        DataTable ds = new DataTable("RCount");
        DataColumn dtColumn1 = new DataColumn();
        dtColumn1.DataType = typeof(string);
        dtColumn1.ColumnName = "Reason";
        ds.Columns.Add(dtColumn1);
        DataColumn dtColumn = new DataColumn();
        dtColumn.DataType = typeof(Int32);
        dtColumn.ColumnName = "No. of Students";
        ds.Columns.Add(dtColumn);
        string[] rod = new string[7] { "Financial Constraints", "Disengagement", "Poor Health", "Family Influences", "Gender Discrimination", "School Availability", "Transportation Problem" };
        for (int i = 0; i < 7; i++)
        {
            string rs = " and Reason='" + rod[i] + "'";
            string q1 = "select Student_name from Student where Status='Dropout' " + d1 + " " + s1 + "" + rs + " "+y1+" ";
            DataTable d2 = GetData(q1);
            count = d2.Rows.Count;
            DataRow myDataRow1 = ds.NewRow();
            myDataRow1["Reason"] = rod[i];
            myDataRow1["No. of Students"] = count;
            ds.Rows.Add(myDataRow1);
            count = 0;
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
        StringBuilder strScript = new StringBuilder();
        try
        {
            strScript.Append(@"<script type='text/javascript'>  
                    google.load('visualization', '1', {packages: ['corechart']}); </script>  
                      
                    <script type='text/javascript'>  
                     
                    function drawChart() {         
                    var data = google.visualization.arrayToDataTable([  
                    ['Task', 'Hours of Day'],");

            foreach (DataRow row in ds.Rows)
            {
                strScript.Append("['" + row["Reason"] + "'," + row["No. of Students"] + "],");
            }
            strScript.Remove(strScript.Length - 1, 1);
            strScript.Append("]);");

            strScript.Append(@" var options = {                
                                    is3D: false,          
                                    };   ");

            strScript.Append(@"var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));          
                                chart.draw(data, options);        
                                }    
                            google.setOnLoadCallback(drawChart);  
                            ");
            strScript.Append(" </script>");

            ltScripts.Text = strScript.ToString();
        }
        catch
        {
        }
        finally
        { 
            strScript.Clear();
        }
        Panel2.Visible = true;
        int count2 = 0;
        DataTable ds2 = new DataTable("SCount");
        DataColumn dtColumn12 = new DataColumn();
        dtColumn12.DataType = typeof(string);
        dtColumn12.ColumnName = "Caste";
        ds2.Columns.Add(dtColumn12);
        DataColumn dtColumn22 = new DataColumn();
        dtColumn22.DataType = typeof(Int32);
        dtColumn22.ColumnName = "No. of Students";
        ds2.Columns.Add(dtColumn22);
        string[] rod2 = new string[4] { "General", "OBC", "ST",  "SC" };
        for (int i = 0; i < 4; i++)
        {
            string ts = " and Caste='" + rod2[i] + "'";
            string qt = "select Student_name from Student where Status='Dropout' " + d1 + " " + s1 + "" + ts + " " + y1 + " ";
            DataTable d2r = GetData(qt);
            count2 = d2r.Rows.Count;
            DataRow myDataRow12 = ds2.NewRow();
            myDataRow12["Caste"] = rod2[i];
            myDataRow12["No. of Students"] = count2;
            ds2.Rows.Add(myDataRow12);
            count2 = 0;
        }
        GridView2.DataSource = ds2;
        GridView2.DataBind();
        StringBuilder strScript2 = new StringBuilder();
        try
        {
            strScript2.Append(@"<script type='text/javascript'>  
                    google.load('visualization', '1', {packages: ['corechart']}); </script>  
                      
                    <script type='text/javascript'>  
                     
                    function drawChart() {         
                    var data = google.visualization.arrayToDataTable([  
                    ['Task', 'Hours of Day'],");

            foreach (DataRow row in ds2.Rows)
            {
                strScript2.Append("['" + row["Caste"] + "'," + row["No. of Students"] + "],");
            }
            strScript2.Remove(strScript2.Length - 1, 1);
            strScript2.Append("]);");

            strScript2.Append(@" var options = {                
                                    is3D: false,          
                                    };   ");

            strScript2.Append(@"var chart = new google.visualization.PieChart(document.getElementById('piechart2_3d'));          
                                chart.draw(data, options);        
                                }    
                            google.setOnLoadCallback(drawChart);  
                            ");
            strScript2.Append(" </script>");

            Literal1.Text = strScript2.ToString();
        }
        catch
        {
        }
        finally
        {
            strScript2.Clear();
        }
    }
    public void castee()
    {

    }
    protected void District_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();

        if (IsPostBack)
        {
            d = District.SelectedValue.ToString();
            string dc = "Select District";
            if (d != dc)
            {
                School.Items.Remove("Select School");
                School.Enabled = true;

            }
            else
            {
                School.Enabled = false;
            }
            string com = "select * from Droplist where district='" + d + "'";
            SqlCommand cmd = new SqlCommand(com, cn);
            School.DataSource = cmd.ExecuteReader();
            School.DataTextField = "school";
            School.DataValueField = "school";
            School.DataBind();
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}