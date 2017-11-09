<%@ Page Language="C#" AutoEventWireup="true" CodeFile="policiesAndRegulationsPage.aspx.cs" Inherits="policiesAndRegulations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/policiesAndRegulations.css" type="text/css" rel="stylesheet" />
    <link href="css/userpage_header_footer.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="top"></div>
		<div id="nav">
			<ul>
				<li>
                    <a>
                        <asp:Button ID="homePage" CssClass="nav_button" runat="server" Text="首页" OnClick="homePage_Click"/>
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="message_announcement" CssClass="nav_button" runat="server" Text="信息公告" OnClick="message_announcement_Click"/>
					</a>
				</li>
				<li>
                    <a>
                        <asp:Button ID="policies_and_regulations" CssClass="nav_button" runat="server" Text="政策法规" OnClick="policies_and_regulations_Click" />
                    </a>
				</li>
				<li>
					<a>
                        <asp:Button ID="charges_publicity" CssClass="nav_button" runat="server" Text="收费项目公示" OnClick="charges_publicity_Click" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="credit_system_rules_and_publicity" CssClass="nav_button" runat="server" Text="学分制规定和公示" OnClick="credit_system_rules_and_publicity_Click" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="backstage_management" CssClass="nav_button" runat="server" Text="后台管理" OnClick="backstage_management_Click" />
					</a>
				</li>
			</ul>
		</div>
		<div id="container">
			<div id="side_left">
				<div class="side_left_box">
					<div class="columnTitle">
                        <asp:Label ID="Label1" runat="server" Text="组织机构" CssClass="labelTitle"></asp:Label>
					</div>
                    <div class="organization_item">
                        <a href="#">学校收费领导小组</a>
                    </div>
                    <div class="organization_item">
                        <a href="#">学校收费监督小组</a>
                    </div>
				</div>
				<div class="side_left_box">
					<div class="columnTitle">
                        <asp:Label ID="Label2" runat="server" Text="监督-维权-咨询" CssClass="labelTitle"></asp:Label>
					</div>
                    <div class="side_left_box_content">
                        <p class="pTitle">举报电话 </p>
					    <p>校纪委: </p>
					    <p>0571-86613530 </p>
					    <p>校财务处: </p>
					    <p>0571-86613792 </p>
					    <p>省物价局: </p>
					    <p>12358</p>
                    </div>
                    <div class="side_left_box_content">
                        <p class="pTitle">网络举报网址 </p>
                        <p>校纪委: </p>
                        <p>jw@zjtcm.net </p>
                        <p>校财务处: </p>
                        <p>cwc@zjtcm.net </p>
                    </div>
                    <div class="side_left_box_content">
                        <p class="pTitle">收费咨询 </p>
                        <p>学校收费咨询室: </p>
                        <p>0571-86613525 </p>
                        <p>教育主管部门: </p>
                        <p>0571—88008918 </p>
                        <p>联系人: </p>
                        <p>林涛 </p>
                    </div>
				</div>
			</div>
			<div id="main">
				
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">
            <div id="footer_content">

            </div>
		</div>
    </form>
</body>
</html>
