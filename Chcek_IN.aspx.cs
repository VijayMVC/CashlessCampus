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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtTag_TextChanged(object sender, EventArgs e)
    {
        try
        {
            con.open_connection();
            string st = "select * from add_Vechicle where uRFID='" + txtTag.Text + "'";
            SqlCommand cmd = new SqlCommand(st, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                DropDownList1.Items.Add(dr["vname"].ToString());
            }
            else
            {
                DropDownList1.Items.RemoveAt(1);
                txtDesc.Text = "";
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
            string st = "select * from add_Vechicle where uRFID='" + txtTag.Text + "' and vname='"+DropDownList1.SelectedItem+"'";
            SqlCommand cmd = new SqlCommand(st, con.con_pass());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtDesc.Text=(dr["vdesc"].ToString());
            }
            con.close_connection();
        }
        catch (Exception ex)
        {
            lbldisp.Text = ex.Message.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.Text == "----Select---" || txtTag.Text == string.Empty || txtDesc.Text == string.Empty)
            {
                lbldisp.Text = "All Feilds must be Filled";
            }
            else
            {
                con.open_connection();
                string st = "insert into check_in values('" + txtTag.Text + "','" + DropDownList1.SelectedItem + "','" + txtDesc.Text + "','"+System.DateTime.Now.ToShortDateString()+"','"+System.DateTime.Now.ToShortTimeString()+"') ";
                SqlCommand cmd = new SqlCommand(st, con.con_pass());
                cmd.ExecuteNonQuery();

                con.close_connection();
                lbldisp.Text = "Check In Successfully";
            }
        }
        catch (Exception ex)
        {
            lbldisp.Text = ex.Message.ToString();
        }
    }
}