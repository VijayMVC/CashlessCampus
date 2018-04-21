using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ReturnBook : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtTag_TextChanged(object sender, EventArgs e)
    {
        con.open_connection();
        string str = "select *  from Issue_Book where rfid='"+txtTag.Text+"'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownList1.Items.Add(dr["bname"].ToString());
        }
        con.close_connection();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int rfid_bal = 0, rfid_bal_lib=0;
        DateTime dt = Convert.ToDateTime(Session["idate"].ToString());
        DateTime dt1 = Convert.ToDateTime(System.DateTime.Now.ToShortDateString().ToString());

        TimeSpan t = dt1 - dt;
        double NrOfDays = t.TotalDays;
        lblDisp.Text = NrOfDays.ToString();
        //Calculate Total Fine

        int fpd = Convert.ToInt32(txtFine.Text);
        double final_Fine = fpd * NrOfDays;

        //end

        //Calculate User RFID Balance

        con.open_connection();
        string str = "select *  from Recharge_Card where RFID_no='" + txtTag.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            rfid_bal = Convert.ToInt32(dr["amount"].ToString());
        }
        con.close_connection();
        con.open_connection();
        string str_lib_card = "select *  from Recharge_Card where RFID_no='" + Session["rfid_card"] + "'";
        SqlCommand cmd_lib_card = new SqlCommand(str_lib_card, con.con_pass());
        SqlDataReader dr1 = cmd_lib_card.ExecuteReader();
        if (dr1.Read())
        {
            rfid_bal_lib = Convert.ToInt32(dr1["amount"].ToString());
        }
        con.close_connection();

        //end

        //Dedudct Total Fine from available Balance

        if (rfid_bal <= 100)
        {
            lblDisp.Text = "Your Card Not Having Suffucient Balance";
        }
        else
        {
            double avl_bal = rfid_bal - final_Fine;
            con.open_connection();
            string str1 = "update Recharge_card set amount='" + avl_bal + "' where RFID_no='" + txtTag.Text + "'";
            SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
            cmd1.ExecuteNonQuery();
            con.close_connection();

            //update Balance of Library
            double lib_bal = rfid_bal_lib + final_Fine;
            con.open_connection();
            string str_lib = "update Recharge_card set amount='" + lib_bal + "' where RFID_no='" + Session["rfid_card"].ToString() + "'";
            SqlCommand cmd_lib = new SqlCommand(str_lib, con.con_pass());
            cmd_lib.ExecuteNonQuery();
            con.close_connection();
            // delete from Issue Book

            con.open_connection();
            string str2 = "Delete from Issue_book where bname='"+DropDownList1.SelectedItem+"'";
            SqlCommand cmd2 = new SqlCommand(str2, con.con_pass());
            cmd2.ExecuteNonQuery();
            con.close_connection();

            //end

            //Insert Value into Statement Table
            con.open_connection();
            string str_Return = "insert into Return_Book values ('" + txtTag.Text + "','" + DropDownList1.SelectedItem + "','" + txtAuthor.Text + "','" + txtPrice.Text + "','" + txtFine.Text + "','" + Session["idate"] + "','" + final_Fine + "','"+System.DateTime.Now.ToShortDateString()+"')";
            SqlCommand cmd_Return = new SqlCommand(str_Return, con.con_pass());
            cmd_Return.ExecuteNonQuery();
            con.close_connection();

            //end
            lblDisp.Text = "Book Return Successfully";
        }


    }
    
    protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        con.open_connection();
        string str = "select *  from Issue_Book where bname='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtName.Text = dr["bname"].ToString();
            txtAuthor.Text = dr["aname"].ToString();
            txtPrice.Text = dr["price"].ToString();
            txtFine.Text = dr["fpd"].ToString();
            Session["idate"] = dr["idate"].ToString();
        }
        con.close_connection();
    }
}