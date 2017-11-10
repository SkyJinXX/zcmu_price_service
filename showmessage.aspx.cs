using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showmessage : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        String SqlStr = "Select article From announcement Where title = '" +(String)Session["name"] + "'";
        SqlCommand cmd = new SqlCommand(SqlStr, objConnection);
        Label1.Text = (String)cmd.ExecuteScalar();
        objConnection.Close();
    }
}