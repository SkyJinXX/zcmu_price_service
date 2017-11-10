<%@ Page Language="C#" AutoEventWireup="true" CodeFile="backstageManagementPage.aspx.cs" Inherits="backstageManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/backstageManagement.css" type="text/css" rel="stylesheet" />
    <link href="css/userpage_header_footer.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="top"></div>
		<div id="nav">
			<ul>
				<li>
                    <a>
                        <asp:Button ID="homePage" CssClass="nav_button" runat="server" Text="首页" OnClick="homePage_Click" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="message_announcement" CssClass="nav_button" runat="server" Text="信息公告" OnClick="message_announcement_Click"/>
					</a>
				</li>
				<li>
                    <a>
                        <asp:Button ID="policies_and_regulations" CssClass="nav_button" runat="server" Text="政策法规" OnClick="policies_and_regulations_Click"  />
                    </a>
				</li>
				<li>
					<a>
                        <asp:Button ID="charges_publicity" CssClass="nav_button" runat="server" Text="收费项目公示" OnClick="charges_publicity_Click"  />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="credit_system_rules_and_publicity" CssClass="nav_button" runat="server" Text="学分制规定和公示" OnClick="credit_system_rules_and_publicity_Click"  />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="backstage_management" CssClass="nav_button" runat="server" Text="后台管理" OnClick="backstage_management_Click"  />
					</a>
				</li>
			</ul>
		</div>
        <div id="login_interface">

            <div id="login">
                <table id="login_form">
                    <tr>
                        <th  colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="登录(Login)" Font-Size="X-Large"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label2" runat="server" Text="请输入用户名:"></asp:Label>
                        </th>
                        <th>
                            <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label3" runat="server" Text="请输入密码:"></asp:Label>
                        </th>
                        <th>
                            <asp:TextBox ID="TextBox2" CssClass="textbox" runat="server" type="password"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th  colspan="2">
                            <asp:Button ID="login_button" runat="server" OnClick="login_button_Click" Text="登录" />
                        </th>
                    </tr>
                </table>
                
                <br />
                
                <br />
                
            </div>
        </div>
		<div id="footer">
            <div id="footer_content">
            </div>
		</div>
    </form>
</body>
</html>
