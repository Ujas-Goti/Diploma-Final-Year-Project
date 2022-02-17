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
    string s, d, r, y,d1,s1,y1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        School.Items.Add("SELECT SCHOOL");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        d = District.SelectedValue.ToString();
        s = School.SelectedValue.ToString();
        y = Year.SelectedValue.ToString();

        string dc = "SELECT DISTRICT";
        string sc = "SELECT SCHOOL";
        string yc = "SELECT YEAR";

        d1= " ";
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
        dtColumn1.ColumnName = "rod";
        ds.Columns.Add(dtColumn1);
        DataColumn dtColumn = new DataColumn();
        dtColumn.DataType = typeof(Int32);
        dtColumn.ColumnName = "rcount";
        ds.Columns.Add(dtColumn);

        string[] rod = new string[7] { "FINANCIAL CONSTRAINTS", "DISENGAGEMENT", "POOR HEALTH", "FAMILY INFLUENCES", "GENDER DISCRIMINATION", "AVAILABILITY", "TRANSPORTATION PROBLEM" };
        for (int i = 0; i < 7; i++)
        {
            string rs = " and Reason='" + rod[i] + "'";
            string q1 = "select Student_name from Student where IsD='Y' " + d1 + " " + s1 + "" + rs + " "+y1+" ";
            DataTable d2 = GetData(q1);
            count = d2.Rows.Count;
            DataRow myDataRow1 = ds.NewRow();
            myDataRow1["rod"] = rod[i];
            myDataRow1["rcount"] = count;
            ds.Rows.Add(myDataRow1);
            count = 0;
        }

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
                strScript.Append("['" + row["rod"] + "'," + row["rcount"] + "],");
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
            ds.Dispose();
            strScript.Clear();
        }
    }

    protected void District_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();

        if (IsPostBack)
        {
            d = District.SelectedValue.ToString();
            string dc = "SELECT DISTRICT";
            if (d != dc)
            {
                School.Items.Remove("SELECT SCHOOL");
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

        Response.Redirect("Default.aspx");
    }
}