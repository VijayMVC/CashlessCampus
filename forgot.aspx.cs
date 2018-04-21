using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Web.Mail;
public partial class forgot : System.Web.UI.Page
{
    connection con = new connection();
    string stpass = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string str = "select * from registration where emailID='"+TextBox1.Text+"'";
        con.open_connection();
        SqlCommand cmd = new SqlCommand(str,con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Image1.ImageUrl = dr["uimage"].ToString();
            lblpass.Text = dr["password"].ToString();
        }
        
        con.close_connection();
    }
    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "trymelater111@gmail.com";
        // any address where the email will be sending
        var toAddress = TextBox1.Text;
        //Password of your gmail address
        const string fromPassword = "trymelater";
        // Passing the values and make a email formate to display
        string subject = "Welcome Digitized Personal Information System System Please Write Down Your User Name and Password";
        string body = "Digitized Personal Information System Management Admin" + "\n";
        body += "User Name: " + TextBox1.Text + "\n";
        body += "Password: " + lblpass.Text + "\n";
        body += "Description:Thanks for Registerning with us" + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SendMail();
    }
}