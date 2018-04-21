using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class userTrans : System.Web.UI.Page
{
    connection con = new connection();
    string rfid = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.open_connection();
        string str = "select *  from registration where emailID='" + Session["emailID"] + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        if (dr.Read())
        {
           rfid = dr["RFID"].ToString();
        }
        con.close_connection();
        showBook();

    }
    private void showBook()
    {
        string q = "select * from fund_transfer where frfid='" + rfid + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter dp = new SqlDataAdapter(q, con.con_pass());
        dp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }

}