using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class fundTransfer : System.Web.UI.Page
{
    connection con = new connection();
    string st = null;
    int avbal = 0, ubal = 0, upbal = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emailID"] == null)
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals(Session["rfid"]))
        {
            double d1=Convert.ToDouble(txtBal.Text);
            double d2 = Convert.ToDouble(TextBox2.Text);
            if (d1 < d2)
            {
                lblDisp.Visible = true;
                lblDisp.Text = "Insufficiant Fund";
            }
            else
            {
                ubal = Convert.ToInt32(Session["avlbal"]) + Convert.ToInt32(TextBox2.Text);
                upbal = Convert.ToInt32(txtBal.Text) - Convert.ToInt32(TextBox2.Text);
                //To User

                con.open_connection();
                string str1 = "update Recharge_card set amount='" + ubal + "' where RFID_no='" + TextBox1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
                cmd1.ExecuteNonQuery();
                con.close_connection();
                //From User
                con.open_connection();
                string str2 = "update Recharge_card set amount='" + upbal + "' where RFID_no='" + txtRFID.Text + "'";
                SqlCommand cmd2 = new SqlCommand(str2, con.con_pass());
                cmd2.ExecuteNonQuery();
                con.close_connection();
                con.open_connection();
                string stfund = "insert into fund_transfer values ('" + txtRFID.Text + "','" + txtBal.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + Session["emailID"] + "','" + System.DateTime.Now.ToString() + "')";
                SqlCommand cmdfund = new SqlCommand(stfund, con.con_pass());
                cmdfund.ExecuteNonQuery();

                con.close_connection();
                lblDisp.Visible = true;
                lblDisp.Text = "Successfully Fund Transfer";
            }
        }
        else
        {
            lblDisp.Visible = true;
            lblDisp.Text = "RFID Not Generated Yet";
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
        con.open_connection();
        string str = "select *  from Recharge_Card where RFID_no='" +TextBox1.Text+ "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["rfid"] = dr["RFID_no"].ToString();
            Session["avlbal"] = Convert.ToInt32(dr["amount"].ToString());
        }
        con.close_connection();
        if (TextBox1.Text.Equals(Session["rfid"].ToString()))
        {
            lblDisp.Visible = true;
            lblDisp.Text = "RFID Available";
        }
        else
        {
            lblDisp.Visible = true;
            lblDisp.Text = "RFID Not Generated Yet";
            TextBox1.Text = "";
        }
        
    }
}