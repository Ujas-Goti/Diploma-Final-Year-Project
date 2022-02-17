using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

public partial class NewAdmission : System.Web.UI.Page
{
    string sid, sname, dname, typofs, bday;
    float yod;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*sid = Session["schoolid"].ToString();
        sname = Session["schoolname"].ToString();
        dname = Session["distname"].ToString();
        typofs = Session["typos"].ToString();
        Label1.Text = dname;
        Label2.Text = sname;*/
    }

    
    protected void Button2_Click(object sender, EventArgs e)
    {
        float aadhar,standard,year,siid;
        bday = TextBox6.Text;
        siid= float.Parse(sid, CultureInfo.InvariantCulture.NumberFormat);
        standard = float.Parse(DropDownList1.SelectedValue, CultureInfo.InvariantCulture.NumberFormat);
        aadhar = float.Parse(TextBox3.Text, CultureInfo.InvariantCulture.NumberFormat);
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        string query = "insert into Student(District,School_name,School_id,Student_name,Gender,Aadhar,Birthdate,Standard,IsD,Type_of_School) VALUES('" + dname + "','" + sname + "','" + siid + "','" + TextBox1.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + aadhar + "','" + bday + "','" + standard + "','N','" + typofs + "')";
        SqlCommand cm = new SqlCommand(query, cn);
        try
        {
            cm.ExecuteNonQuery();
            cm.Dispose();
        }
        catch
        {}
        cn.Close();

    }
}