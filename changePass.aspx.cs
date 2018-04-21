using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changePass : System.Web.UI.Page
{
    connection con = new connection();
    string st3;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void txtOld_TextChanged(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string st = txtOld.Text;
        try
        {

            con.open_connection();
            string str = "select * from registration where emailID='" + Session["emailID"] + "'";
            SqlCommand cmd = new SqlCommand(str, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                st3 = dr["password"].ToString();

            }
            con.close_connection();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }

        if (st3.Equals(st))
        {
            con.open_connection();
            string str = "update registration set password='" + txtNew.Text + "' where emailID='" + Session["emailID"] + "'";
            SqlCommand cmd = new SqlCommand(str, con.con_pass());
            cmd.ExecuteNonQuery();
            con.close_connection();
            Label4.Visible = true;
            Label4.Text = "Password  Changed Successfully !!!!!";
            con.open_connection();
            string str1 = "update login set pass='" + txtNew.Text + "' where emailID='" + Session["emailID"] + "'";
            SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
            cmd1.ExecuteNonQuery();
            con.close_connection();
            Response.Write("<script>alert('Password  Changed Successfully ') </script>");
        }
        else
        {
            Response.Write("<script>alert('Password Not Changed ') </script>");
        }

    }
}