using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class backstageManagement : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
    }

    protected void login_button_Click(object sender, EventArgs e)
    {
        try
        {
            objConnection.Open();
            String SqlStr = "Select username From users Where username = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(SqlStr, objConnection);
            if (cmd.ExecuteScalar() == null)
                Response.Write("<script>alert('该用户名不存在')</script>");
            else
            {
                String SqlStr1 = "Select password From users where username = '" + TextBox1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(SqlStr, objConnection);

                String st = TextBox2.Text;
                int l1 = st.Length;
                String st1 = (String)cmd.ExecuteScalar();
                int l2 = st1.Length;

                for (int i = 0; i < l2 - l1; i++)
                    st += ' ';
                if (st == st1)
                {
                    Response.Write("<script>alert('登陆成功');window.location.href='users.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('密码不正确')</script>");
                }
            }
            objConnection.Close();
        }
        catch
        {
            Response.Write("<script>alert('登录失败');</script>");
        }
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