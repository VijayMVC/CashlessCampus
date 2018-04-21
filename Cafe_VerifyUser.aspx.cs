using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class viewProfile : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    
    
    protected void txtRFID_TextChanged(object sender, EventArgs e)
    {
        DetailsView1.Visible = true;
        Image1.Visible = true;
        lbldisp.Visible = false;
        con.open_connection();
        string str = "select *  from registration where RFID='" + txtRFID.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        if (dr.Read())
        {
            Image1.ImageUrl = dr["uimage"].ToString();
        }
        else
        {
            lbldisp.Visible = true;
            lbldisp.Text = "RFID Not Generated Yet";
            DetailsView1.Visible = false;
            Image1.Visible = false;
        }
        con.close_connection();
    }
}