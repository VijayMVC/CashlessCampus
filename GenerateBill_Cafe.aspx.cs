using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


public partial class GenerateBill_Cafe : System.Web.UI.Page
{
    connection con = new connection();
    int total = 0, itemprice = 0; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            addItems();
        }
    }
    public void addItems()
    {
        con.open_connection();
        string str = "select item_name from Add_Item";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            drpItem.Items.Add(dr["item_name"].ToString());
        }
        con.close_connection();


        con.close_connection();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       
        ListBox1.Items.Add(drpItem.SelectedValue);

        itemprice = Convert.ToInt32(txtPrice.Text);
        
        total = Convert.ToInt32(txtTotal.Text);
        txtTotal.Text =  (total+ itemprice).ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox1.Items.RemoveAt(ListBox1.Items.IndexOf(ListBox1.SelectedItem));
        itemprice = Convert.ToInt32(txtPrice.Text);

        total = Convert.ToInt32(txtTotal.Text);
        txtTotal.Text = (total - itemprice).ToString();
    }
    protected void drpItem_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.open_connection();
        string str = "select * from Add_Item where item_name='"+drpItem.SelectedItem+"'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            txtSize.Text = dr["item_size"].ToString();
            txtPrice.Text = dr["item_price"].ToString();
        }
        con.close_connection();


        con.close_connection();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int rfid_bal = 0, rfid_bal_cafe = 0;
        int total_amt = Convert.ToInt32(txtTotal.Text);
        // User Balance
        con.open_connection();
        string str = "select *  from Recharge_Card where RFID_no='" + txtTag.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            rfid_bal = Convert.ToInt32(dr["amount"].ToString());
        }
        con.close_connection();
        //Cafe User Balance
        con.open_connection();
        string str_lib_card = "select *  from Recharge_Card where RFID_no='" + Session["rfid_card"] + "'";
        SqlCommand cmd_lib_card = new SqlCommand(str_lib_card, con.con_pass());
        SqlDataReader dr1 = cmd_lib_card.ExecuteReader();
        if (dr1.Read())
        {
            rfid_bal_cafe = Convert.ToInt32(dr1["amount"].ToString());
        }
        con.close_connection();

        double avl_bal = rfid_bal - total_amt;
        con.open_connection();
        string str1 = "update Recharge_card set amount='" + avl_bal + "' where RFID_no='" + txtTag.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con.con_pass());
        cmd1.ExecuteNonQuery();
        con.close_connection();

        //update Balance of Cafe
        double cafe_bal = rfid_bal_cafe + total_amt;
        con.open_connection();
        string str_lib = "update Recharge_card set amount='" + cafe_bal + "' where RFID_no='" + Session["rfid_card"].ToString() + "'";
        SqlCommand cmd_lib = new SqlCommand(str_lib, con.con_pass());
        cmd_lib.ExecuteNonQuery();
        con.close_connection();
        //Generate Statement
       
        foreach (ListItem item in ListBox1.Items)
        {
            
            string Text = item.Text;
            ArrayList ar = new ArrayList();
            ar.Add(Text);
            for (int i = 0; i < ar.Count; i++)
            {
                lblItems.Text += ar[i].ToString() + ",";
                
            }
            
        }
        con.open_connection();
        string st_stm = "insert into cafe_order values ('" + txtTag.Text + "','" + lblItems.Text + "','" + txtTotal.Text + "','" + System.DateTime.Now.ToString() + "')";
        SqlCommand cmd_stm = new SqlCommand(st_stm, con.con_pass());
        cmd_stm.ExecuteNonQuery();
        con.close_connection();
        lblmsg.Text = "Your Bill Has been Generated !!!!!";
    }
}