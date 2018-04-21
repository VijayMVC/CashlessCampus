using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mail;
using System.Net;
using System.IO;

public partial class register : System.Web.UI.Page
{
    connection con = new connection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        FileUpload1.Attributes["onchange"] = "UploadFile(this)";
        fillid();
        
    }
    protected void Upload(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/uploadImage/" + Path.GetFileName(FileUpload1.FileName)));
        Image1.ImageUrl = "~/uploadImage/" + Path.GetFileName(FileUpload1.FileName);
        //lblMessage.Visible = true;
        
    }
    public void fillid()
    {
        con.open_connection();
        string str = "select * from registration order by userid";
        SqlCommand cmd = new SqlCommand(str,con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        while (dr.Read())
        {
            int a = 0;
            a = Convert.ToInt32(dr["userid"].ToString());
            ViewState["sid"] = a.ToString();
            i = i + 1;
        }
        if (i > 0)
        {
            int a = Convert.ToInt32(ViewState["sid"].ToString());
            a = a + 1;
            txtID.Text = a.ToString();
        }
        else
            txtID.Text = "101";
        con.close_connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1 = null;
        try
        {
            if (txtFname.Text == string.Empty || txtLName.Text == string.Empty || txtEmail.Text == string.Empty || txtcEmail.Text == string.Empty || txtAdd.Text == string.Empty || txtPostal.Text == string.Empty || txtPone.Text == string.Empty || txtPass.Text == string.Empty)
            {
                Response.Write("<script>alert('All Feilds Must be Filled') </script>");
            }
            else
            {
                
                    string dob = txtDOB.Text;
                    //string status = "Pending";
                    // string utype = "User";
                    con.open_connection();
                    string str = "insert into registration values('" + txtID.Text + "','" + txtEmail.Text + "','" + txtFname.Text + "','" + txtLName.Text + "','" + radGen.Text + "','" + txtFather.Text + "','" + txtPass.Text + "','" + dob + "','" + txtAdd.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtPostal.Text + "','" + txtCountry.Text + "','" + txtPone.Text + "','" + System.DateTime.Now.ToString() + "','" + DropDownList1.SelectedItem + "','" + txtTag.Text + "','" + Image1.ImageUrl + "')";
                    SqlCommand cmd = new SqlCommand(str, con.con_pass());
                    cmd.ExecuteNonQuery();
                    // con.close_connection();
                    // SendMail();
                    //  con.open_connection();
                    string stuser = "insert into login values('" + txtEmail.Text + "','" + txtPass.Text + "','" + DropDownList1.SelectedItem + "')";
                    SqlCommand cmduser = new SqlCommand(stuser, con.con_pass());
                    cmduser.ExecuteNonQuery();

                    //  con.close_connection();
                    // con.open_connection();
                    int amt = 0;
                    string stcard = "insert into Recharge_Card values('" + txtTag.Text + "','" + amt + "','" + System.DateTime.Now.ToString() + "')";
                    SqlCommand cmdcard = new SqlCommand(stcard, con.con_pass());
                    cmdcard.ExecuteNonQuery();
                    con.close_connection();

                //Label9.Visible = true
                Response.Write("<script>alert('Your Account is successfully created. Please login into your account...!!'); window.location.href = 'login.aspx'; </script>"); 
                //Label9.Text = "!!..Hi.." + txtFname.Text + " " + txtLName.Text + "',  Your Account is successfully created check Your Email ID for further Details..!!";

                resetFields();
            }

        }
        catch (Exception ex)
        {
            Label9.Visible = true;
            Label9.Text = ex.Message;
        }
    }

    protected void resetFields()
    {
        txtFname.Text = null; txtLName.Text = null; txtLName.Text = null;
        txtEmail.Text = null; txtcEmail.Text = null; txtAdd.Text = null;
        txtPostal.Text = null; txtPone.Text = null; txtPass.Text = null;
        txtFather.Text = null; txtDOB.Text = null; txtTag.Text = null;
        txtCity.Text = null;  radGen.SelectedIndex = -1;
        txtCountry.SelectedIndex = 0; txtState.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        Image1.ImageUrl = "";
    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "trymelater111@gmail.com";
        // any address where the email will be sending
        var toAddress = txtEmail.Text;
        //Password of your gmail address
        const string fromPassword = "trymelater";
        // Passing the values and make a email formate to display
        string subject = "WELCOME to Cashless Campus Please Write Down Your User Name and Password";
        string body = "Student Smart Card" + "\n";
        body += "User Name: " + txtEmail.Text + "\n";
        body += "Password: " + txtPass.Text + "\n";
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
    protected void ddl_dte_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //if (FileUpload1.HasFile)
        //{
        //    try
        //    {
        //        string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
        //        FileUpload1.SaveAs(Server.MapPath("~/uploadImage/") + filename);
        //        // Console.Write(filename);
        //        Image1.ImageUrl = "~/uploadImage/" + filename;
        //        Image1.Visible = true;
        //        // TextBox9.Text = Image1.ImageUrl;
        //        FileUpload1.Visible = false;
        //        Button2.Visible = false;
        //    }
        //    catch (Exception ex)
        //    {
        //        //StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
        //    }
        //}
    }
    
    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        string s1=null;
        con.open_connection();
                string str1 = "select * from registration where emailID='" + txtEmail.Text + "' ";
                SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
                SqlDataReader dr1 = cmd1.ExecuteReader();

                if (dr1.Read())
                {
                    s1 = dr1["emailid"].ToString();
                }
                con.close_connection();
                if (txtEmail.Text.Equals(s1))
                {
                    Response.Write("<script>alert('Email ID alredy Registered try other!!!!!') </script>");
                    txtEmail.Text = "";
                    txtcEmail.Text = "";
                }
    }
}