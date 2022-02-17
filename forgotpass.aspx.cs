using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class forgetpass : System.Web.UI.Page
{
    string email,sid;
    static String code;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        sid = Session["schoolid"].ToString();
        string sql = "select Email from School where School_id='" + sid + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd = new SqlCommand(sql, cn);
        DataTable d1 = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = cmd;
        sda.Fill(d1);
        email = d1.Rows[0]["Email"].ToString();
        cmd.Dispose();
        d1.Dispose();
        cn.Close();
        //email = "hesitantaxegamer@gmail.com";
        Label1.Text = "Your email : " + email;
        Panel1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        code = random.Next(100001, 999999).ToString();
        String query = "update School set OTP = '"+code+"' where School_id = '"+sid+"' ";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        SqlCommand cmd1 = new SqlCommand(query,cn);
        cmd1.ExecuteNonQuery();
        cmd1.Dispose();
        sendcode();
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel2.Visible = true;
        Panel1.Visible = false;
        cn.Close();
    }

    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("dropoutanalyzer@gmail.com", "schl1234");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Reset your password";
        msg.Body = "Verification Code : " + code + "\n\n\nThanks & Regards\nDanalyzer & Team(YOUR FRIEND GOTIYA)";
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
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        String q1 = "update School set Password = '" + TextBox1.Text + "' where School_id = '" + sid + "' ";
        SqlCommand cmd1 = new SqlCommand(q1, cn);
        cmd1.ExecuteNonQuery();
        cmd1.Dispose();
        Panel4.Visible = true;
        Panel3.Visible = false;
        Panel2.Visible = false;
        Panel1.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string votp = TextBox3.Text;
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-0K9CDST\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        cn.Open();
        string q1 = "select OTP from School where School_id='"+sid+"'";
        SqlCommand cmd = new SqlCommand(q1,cn);
        DataTable d1 = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = cmd;
        sda.Fill(d1);
        string pass = d1.Rows[0]["OTP"].ToString();
        cmd.Dispose();
        if (votp == pass)
        {
            Panel4.Visible = false;
            Panel3.Visible = true;
            Panel2.Visible = false;
            Panel1.Visible = false;
            q1 = "update School set OTP = NULL where School_id = '" + sid + "'";
            SqlCommand cmd1 = new SqlCommand(q1, cn);
            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
        }
        d1.Dispose();
        cn.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Schoollogin.aspx");
    }
}