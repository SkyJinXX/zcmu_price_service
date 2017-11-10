using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection objConnection = new SqlConnection();
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();

        String SelectSql = "select title,datetime from announcement where type='"+1+"'";
        SqlDataAdapter da = new SqlDataAdapter(SelectSql, objConnection);
        DataSet ds = new DataSet();
        da.Fill(ds);
        messageAnnouncementGridView.DataSource = ds;
        messageAnnouncementGridView.DataBind();

        String SelectSql1 = "select title,datetime from announcement where type='"+2+"'";
        SqlDataAdapter da1 = new SqlDataAdapter(SelectSql1, objConnection);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        policiesAndRegulationsGridView.DataSource = ds1;
        policiesAndRegulationsGridView.DataBind();

        String SelectSql2 = "select title,datetime from announcement where type='"+3+"'";
        SqlDataAdapter da2 = new SqlDataAdapter(SelectSql2, objConnection);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        chargesPublicityGridView.DataSource = ds2;
        chargesPublicityGridView.DataBind();

        String SelectSql3 = "select title,datetime from announcement where type='"+4+"'";
        SqlDataAdapter da3 = new SqlDataAdapter(SelectSql3, objConnection);
        DataSet ds3 = new DataSet();
        da3.Fill(ds3);
        creditSystemRulesAndPublicityGridView.DataSource = ds3;
        creditSystemRulesAndPublicityGridView.DataBind();

        objConnection.Close();

    }

    protected void homePage_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void message_announcement_Click(object sender, EventArgs e)
    {
        Response.Redirect("messageAnnouncementPage.aspx");
    }

    protected void policies_and_regulations_Click(object sender, EventArgs e)
    {
        Response.Redirect("policiesAndRegulationsPage.aspx");
    }

    protected void charges_publicity_Click(object sender, EventArgs e)
    {
        Response.Redirect("chargesPublicityPage.aspx");
    }

    protected void credit_system_rules_and_publicity_Click(object sender, EventArgs e)
    {
        Response.Redirect("creditSystemRulesAndPublicityPage.aspx");
    }

    protected void backstage_management_Click(object sender, EventArgs e)
    {
        Response.Redirect("backstageManagementPage.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
        Session["name"] = messageAnnouncementGridView.Rows[row].Cells[0].Text;
        Response.Redirect("showmessage.aspx");
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
        Session["name"] = messageAnnouncementGridView.Rows[row].Cells[0].Text;
        Response.Redirect("showmessage.aspx");
    }

    protected void LinkButton1_Click4(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
        Session["name"] = policiesAndRegulationsGridView.Rows[row].Cells[0].Text;
        Response.Redirect("showmessage.aspx");
    }

    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
        Session["name"] = chargesPublicityGridView.Rows[row].Cells[0].Text;
        Response.Redirect("showmessage.aspx");
    }

    protected void LinkButton1_Click3(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
        Session["name"] = creditSystemRulesAndPublicityGridView.Rows[row].Cells[0].Text;
        Response.Redirect("showmessage.aspx");
    }
}