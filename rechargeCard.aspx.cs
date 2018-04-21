using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class rechargeCard : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            int iamt = Convert.ToInt32(txtAvl.Text);
            int add_amt = Convert.ToInt32(txtAmt.Text);
            int famt = iamt + add_amt;
            float rem = add_amt / 100;
            if (add_amt<100)
            {
                lblDisp.Text = "Amount Multiple of 100";
            }
            else
            {
                con.open_connection();
                string str = "update Recharge_card set amount='" + famt + "' where RFID_no='" + txtCard.Text + "'";
                SqlCommand cmd = new SqlCommand(str, con.con_pass());
                cmd.ExecuteNonQuery();
                con.close_connection();
                lblDisp.Text = "Successfully Recharged Card";
            }
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }
   
    protected void txtCard_TextChanged(object sender, EventArgs e)
    {
        try
        {
            con.open_connection();
            string str = "select amount from Recharge_card where  RFID_no='" + txtCard.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtAvl.Text = dr["amount"].ToString();
            }
            con.close_connection();

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }
}