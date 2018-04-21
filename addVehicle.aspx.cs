using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addVehicle : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == string.Empty || txtTag.Text == string.Empty || txtDesc.Text == string.Empty)
            {
                lbldisp.Text = "All Feilds must be Filled";
            }
            else
            {
                con.open_connection();
                string st = "insert into add_Vechicle(vtype,vname,uRFID,vdesc) values('"+drpType.SelectedItem+"','"+txtName.Text+"','"+txtTag.Text+"','"+txtDesc.Text+"') ";
                SqlCommand cmd = new SqlCommand(st,con.con_pass());
                cmd.ExecuteNonQuery();

                con.close_connection();
                lbldisp.Text = "Register Vehicle Successfully";
            }
        }
        catch (Exception ex)
        {
            lbldisp.Text = ex.Message.ToString();
        }

    }
}