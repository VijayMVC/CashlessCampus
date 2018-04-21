using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viewBalance : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emailID"]==null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string rfid = null;
            con.open_connection();
            string str = "select RFID  from registration where emailID='" + Session["emailID"] + "'";
            SqlCommand cmd = new SqlCommand(str, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                rfid = dr["RFID"].ToString();
            }
            con.close_connection();
            con.open_connection();
            string str1 = "select amount  from recharge_card where RFID_no='" + rfid + "'";
            SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            txtRFID.Text = rfid;
            if (dr1.Read())
            {

                txtBal.Text = dr1["amount"].ToString();
            }




            con.close_connection();
        }

    }
}