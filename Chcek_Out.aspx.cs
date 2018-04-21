using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Chcek_IN : System.Web.UI.Page
{
    connection con = new connection();
    TimeSpan duration;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtOut.Text = System.DateTime.Now.ToShortTimeString();
    }
    protected void txtTag_TextChanged(object sender, EventArgs e)
    {
        try
        {
            con.open_connection();
            string st = "select vname from check_in where uRFID='" + txtTag.Text + "'";
            SqlCommand cmd = new SqlCommand(st, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                DropDownList1.Items.Add(dr["vname"].ToString());
            }
            else
            {
               
                lbldisp.Text= "The Vehicle Not Available in Parking";
               // DropDownList1.Items.RemoveAt(1);
               // txtDesc.Text = "";
            
            }
            con.close_connection();
        }
        catch (Exception ex)
        {
            lbldisp.Text = ex.Message.ToString();
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            con.open_connection();
            string st = "select * from Check_In where uRFID='" + txtTag.Text + "' and vname='"+DropDownList1.SelectedItem+"'";
            SqlCommand cmd = new SqlCommand(st, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtDesc.Text = (dr["vdesc"].ToString());
                txtCheckIn.Text = (dr["chk_in_date"].ToString());
                txtTime.Text = (dr["chk_in_time"].ToString());
            }
           
            con.close_connection();
            DateTime StartTime = DateTime.Parse(txtTime.Text);

            DateTime EndTime = DateTime.Parse(txtOut.Text); // It converts this to 1600.

            TimeSpan duration = EndTime - StartTime;
            txtTimeDiff.Text = duration.Hours.ToString();
        }
        catch (Exception ex)
        {
            lbldisp.Text = ex.Message.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double rfid_bal = 0, rfid_bal_park = 0;
        
            try
            {
                if (DropDownList1.Text == "----Select---" || txtTag.Text == string.Empty || txtDesc.Text == string.Empty)
                {
                    lbldisp.Text = "All Feilds must be Filled";
                }
                else
                {
                   
                   // Calculate User RFID Balance

                    con.open_connection();
                    string str_park = "select amount  from Recharge_Card where RFID_no='" + txtTag.Text + "'";
                    SqlCommand cmd_park = new SqlCommand(str_park, con.con_pass());
                    SqlDataReader dr_park = cmd_park.ExecuteReader();
                    if (dr_park.Read())
                    {
                        rfid_bal = Convert.ToDouble(dr_park["amount"].ToString());
                    }
                    con.close_connection();
                    con.open_connection();
                    string str_park_card = "select *  from Recharge_Card where RFID_no='" + Session["rfid_card"] + "'";
                    SqlCommand cmd_park_card = new SqlCommand(str_park_card, con.con_pass());
                    SqlDataReader dr_park1 = cmd_park_card.ExecuteReader();
                    if (dr_park1.Read())
                    {
                        rfid_bal_park = Convert.ToDouble(dr_park1["amount"].ToString());
                    }
                    con.close_connection();

                    //lbldisp.Text = "User Balance" + rfid_bal + "Parking" + rfid_bal_park;

                    //end

                    //Dedudct Total Fare from available Balance

                    if (rfid_bal <= 100)
                    {
                        lbldisp.Text = "Your Card Not Having Suffucient Balance";
                    }
                    else
                    {
                       
                        double totalfare = ((Convert.ToDouble(txtTimeDiff.Text)) * 10);
                        if (totalfare < 1)
                        {
                            totalfare = 10;
                            con.open_connection();
                            string st = "insert into check_out values('" + txtTag.Text + "','" + DropDownList1.SelectedItem + "','" + txtDesc.Text + "','" + txtCheckIn.Text + "','" + txtTime.Text + "','" + System.DateTime.Now.ToShortTimeString() + "','" + System.DateTime.Now.ToShortDateString() + "','" + totalfare + "') ";
                            SqlCommand cmd = new SqlCommand(st, con.con_pass());
                            cmd.ExecuteNonQuery();
                            con.close_connection();

                            //lbldisp.Text = totalfare.ToString();
                            double avl_bal = rfid_bal - totalfare;
                            con.open_connection();
                            string str1 = "update Recharge_card set amount='" + avl_bal + "' where RFID_no='" + txtTag.Text + "'";
                            SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
                            cmd1.ExecuteNonQuery();
                            con.close_connection();

                            //update Balance of Parking
                            double parking_bal = rfid_bal_park + totalfare;
                            con.open_connection();
                            string str_lib = "update Recharge_card set amount='" + parking_bal + "' where RFID_no='" + Session["rfid_card"].ToString() + "'";
                            SqlCommand cmd_lib = new SqlCommand(str_lib, con.con_pass());
                            cmd_lib.ExecuteNonQuery();
                            con.close_connection();
                            // delete from Check In Details

                            con.open_connection();
                            string str2 = "Delete from Check_in where urfid='" + txtTag.Text + "'";
                            SqlCommand cmd2 = new SqlCommand(str2, con.con_pass());
                            cmd2.ExecuteNonQuery();
                            con.close_connection();
                        }
                        else
                        {
                            con.open_connection();
                            string st = "insert into check_out values('" + txtTag.Text + "','" + DropDownList1.SelectedItem + "','" + txtDesc.Text + "','" + txtCheckIn.Text + "','" + txtTime.Text + "','" + System.DateTime.Now.ToShortTimeString() + "','" + System.DateTime.Now.ToShortDateString() + "','" + totalfare + "') ";
                            SqlCommand cmd = new SqlCommand(st, con.con_pass());
                            cmd.ExecuteNonQuery();
                            con.close_connection();

                            //lbldisp.Text = totalfare.ToString();
                            double avl_bal = rfid_bal - totalfare;
                            con.open_connection();
                            string str1 = "update Recharge_card set amount='" + avl_bal + "' where RFID_no='" + txtTag.Text + "'";
                            SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
                            cmd1.ExecuteNonQuery();
                            con.close_connection();

                            //update Balance of Parking
                            double parking_bal = rfid_bal_park + totalfare;
                            con.open_connection();
                            string str_lib = "update Recharge_card set amount='" + parking_bal + "' where RFID_no='" + Session["rfid_card"].ToString() + "'";
                            SqlCommand cmd_lib = new SqlCommand(str_lib, con.con_pass());
                            cmd_lib.ExecuteNonQuery();
                            con.close_connection();
                            // delete from Check In Details

                            con.open_connection();
                            string str2 = "Delete from Check_in where urfid='" + txtTag.Text + "'";
                            SqlCommand cmd2 = new SqlCommand(str2, con.con_pass());
                            cmd2.ExecuteNonQuery();
                            con.close_connection();
                        }

                        //end


                    }
                    lbldisp.Text = "Check Out Successfully";
                }
            }
            catch (Exception ex)
            {
                lbldisp.Text = ex.Message.ToString();
            }
    }
}