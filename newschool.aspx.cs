using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography;
using System.Text;

public partial class newschool : System.Web.UI.Page
{
    static string email,district,school;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        district = DropDownList1.SelectedValue.ToString();
        school = TextBox4.Text;
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        string q1 = "insert into School(Dist_name,School_name,School_id,Password,Typeofschool,Email) values('" + district + "','" + school + "','" + TextBox1.Text + "','" + GenerateMD5(TextBox5.Text) + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox3.Text + "')";
        SqlCommand cmd = new SqlCommand(q1, cn);
        int i = cmd.ExecuteNonQuery();
        if (i == 0)
        {
            Label1.Text = "Insertion Failed.";
        }
        else
        {
            sendcode();
        }
        cmd.Dispose();
        cn.Close();
        droplist();
    }
    private void droplist()
    {
        SqlConnection cn2 = new SqlConnection();
        cn2.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn2.Open();
        string q2 = "insert into Droplist(district,school) values('" + district + "','" + school + "')";
        SqlCommand cmd2 = new SqlCommand(q2, cn2);
        cmd2.ExecuteNonQuery();
        cmd2.Dispose();
    }
    private void sendcode()
    {
        email = TextBox3.Text;
        email = "hesitantaxegamer@gmail.com";
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("dropoutanalyzer@gmail.com", "schl1234");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Login Details";
        msg.Body = "School Name : "+ TextBox4.Text + "\nSchool ID : " + TextBox1.Text + "\nPassword : "+ TextBox5.Text + "\n\nThanks & Regards\nDanalyzer & Team";
        string toaddress = email;
        msg.To.Add(toaddress);
        string fromaddress = "Danalyzer <dropoutanalyzer@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
        Label1.Text = "Inserted Succesfully. School details will be sent to " + email;
        Panel3.Visible = true;
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

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        string q1 = "select * from School where School_id='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(q1, cn);
        DataTable dt = GetData(q1);

        if (dt.Rows.Count != 0)
        {
            Button1.Enabled = false;
            Label2.Visible = true;
            Label2.Text = "*School already registered";
        }
        else
        {
            Label2.Visible = false;
            Button1.Enabled = true;
        }
        cn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }

    public string GenerateMD5(string yourString)
    {
        return string.Join("", MD5.Create().ComputeHash(Encoding.ASCII.GetBytes(yourString)).Select(s => s.ToString("x2")));
    }
}