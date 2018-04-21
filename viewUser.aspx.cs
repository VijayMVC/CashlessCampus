using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viewDonar : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showUser();

        }
    }
    private void showUser()
    {
        string q = "select * from registration";
        DataTable dt = new DataTable();
        SqlDataAdapter dp = new SqlDataAdapter(q, con.con_pass());
        dp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
    private void deleteData(string name)
    {
        string str = "delete from registration where userID='" + name + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        con.open_connection();
        cmd.ExecuteNonQuery();
        con.close_connection();
        showUser();



    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string name = GridView1.DataKeys[e.RowIndex].Value.ToString();
        deleteData(name);
        showUser();
    }
}