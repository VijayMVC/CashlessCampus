using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addItem : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtName.Text == string.Empty || txtPrice.Text == string.Empty)
        {
            lblDisp.Text = "All Feilds Must be Filled";
        }
        else
        {
            try
            {
                con.open_connection();
                string st = "insert into add_item(item_name,item_size,item_price) values ('"+txtName.Text+"','"+DropDownList1.SelectedItem+"','"+txtPrice.Text+"')";
                SqlCommand cmd = new SqlCommand(st,con.con_pass());
                cmd.ExecuteNonQuery();

                con.close_connection();
                lblDisp.Text = "Items Added Successfully";
            }
            catch(Exception ex)
            {
                lblDisp.Text = ex.Message.ToString();

            }
        }
    }
}