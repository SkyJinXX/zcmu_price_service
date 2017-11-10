﻿using System;
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

        String SelectSql = "select title,datetime from announcement";
        SqlDataAdapter da = new SqlDataAdapter(SelectSql, objConnection);
        DataSet ds = new DataSet();
        da.Fill(ds);
        messageAnnouncementGridView.DataSource = ds;
        messageAnnouncementGridView.DataBind();
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
}