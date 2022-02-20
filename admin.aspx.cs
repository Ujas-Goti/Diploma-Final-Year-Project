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
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("id");
        Response.Redirect("adminlogin.aspx");
    }
}