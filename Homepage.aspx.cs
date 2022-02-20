using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    string s, d, r, y;
    protected void Page_Load(object sender, EventArgs e)
    {
        School.Items.Add("Select School");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        d = District.SelectedValue.ToString();
        s = School.SelectedValue.ToString();
        r = Reason.SelectedValue.ToString();
        y = Year.SelectedValue.ToString();

        string dc = "Select District";
        string sc = "Select School";
        string rc = "Select Reason";
        string yc = "Select Year";

        Session["d"] = " ";
        Session["s"] = " ";
        Session["r"] = " ";
        Session["y"] = " ";

        if (d != dc)
        {
            Session["d"] = " and District='" + d + "'";
        }
        if (s != sc)
        {
            Session["s"] = " and School_name='" + s + "'";
        }
        if (r != rc)
        {
            Session["r"] = " and Reason='" + r + "'";
        }
        if (y != yc)
        {
            Session["y"] = " and Year_of_Dropout='" + y + "'";
        }

        Response.Redirect("Dataview.aspx");
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


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Graphview.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Schoollogin.aspx");
    }
}