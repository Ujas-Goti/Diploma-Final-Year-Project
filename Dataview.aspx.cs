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

        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        string d, s, r, y, query;

        d = Session["d"] as string;
        s = Session["s"] as string;
        r = Session["r"] as string;
        y = Session["y"] as string;

        query = "select District,School_name,Type_of_School,Student_name,Gender,Birthdate,Standard,Reason,Year_of_Dropout from Student where IsD='Y' " + d + " " + s + " " + r + " " + y + "";

        SqlCommand cmd = new SqlCommand(query, cn);
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        cn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("d");
        Session.Remove("r");
        Session.Remove("s");
        Session.Remove("y");
        Response.Redirect("Default.aspx");
    }
}