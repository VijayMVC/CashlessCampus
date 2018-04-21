using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    connection con=new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string st1 = txt_id.Text;
        string st2 = txt_pwd.Text;
        string st3=DropDownList1.SelectedItem.ToString();
        con.open_connection();
        string str = "select * from login where emailid='" + txt_id.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            if (st3.Equals("Student"))
            {
                if (dr["emailid"].ToString() == st1 && dr["pass"].ToString() == st2 && dr["utype"].ToString() == "Student")
                {
                    Session["emailID"] = st1;
                    Response.Redirect("viewProfile.aspx");
                }
            }
            else if (st3.Equals("Library"))
            {
                if (dr["emailid"].ToString() == st1 && dr["pass"].ToString() == st2 && dr["utype"].ToString() == "Library")
                {
                    Session["emailID"] = st1;
                    //Session["rfid_card"]=dr["RFID"].ToString();
                    Response.Redirect("viewProfile_library.aspx");
                }
            }
            else if (st3.Equals("Cafe"))
            {
                if (dr["emailid"].ToString() == st1 && dr["pass"].ToString() == st2 && dr["utype"].ToString() == "Cafe")
                {
                    Session["emailID"] = st1;
                    Response.Redirect("viewProfile_cafe.aspx");
                }
            }
            else if(st3.Equals("Parking"))
            {
             if (dr["emailid"].ToString() == st1 && dr["pass"].ToString() == st2 && dr["utype"].ToString() == "Parking")
            {
                Session["emailID"] = st1;
                Response.Redirect("viewProfile_parking.aspx");
            }
            }

            else
            {
                lblerr.Visible = true;

                lblerr.Text = "User Name & Password Does not Match";

            }
        }
        con.close_connection();   

        if (st1.Equals("admin") && st2.Equals("admin") && st3.Equals("Admin"))
        {
            Response.Redirect("viewUser.aspx");
        }
       
        else
        {
            lblerr.Visible = true;

            lblerr.Text = "Name & Password Does not Match";

        }
    }
   
}