<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="zcmu_price_service.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/index.css" type="text/css" rel="stylesheet" />
    <link href="css/userpage_header_footer.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="top"></div>
		<div id="nav">
			<ul>
				<li>
                    <a>
                        <asp:Button ID="homePage" CssClass="nav_button" runat="server" Text="首页" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="messageAnnouncement" CssClass="nav_button" runat="server" Text="信息公告" />
					</a>
				</li>
				<li>
                    <a>
                        <asp:Button ID="policiesAndRegulations" CssClass="nav_button" runat="server" Text="政策法规" />
                    </a>
				</li>
				<li>
					<a>
                        <asp:Button ID="chargesPublicity" CssClass="nav_button" runat="server" Text="收费项目公示" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="creditSystemRulesAndPublicity" CssClass="nav_button" runat="server" Text="学分制规定和公示" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="backstageManagement" CssClass="nav_button" runat="server" Text="后台管理" />
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
				<div class="title">信息公告</div>
				<div class="content">
                    <asp:GridView ID="messageAnnouncementGridView" runat="server"></asp:GridView>
				</div>
				<div class="title">政策法规</div>
				<div class="content">
                    <asp:GridView ID="policiesAndRegulationsGridView" runat="server"></asp:GridView>
				</div>
				<div class="title">收费项目</div>
				<div class="content">
                    <asp:GridView ID="chargesPublicityGridView" runat="server"></asp:GridView>
				</div>
				<div class="title">学分制规定和公示</div>
				<div class="content">
                    <asp:GridView ID="creditSystemRulesAndPublicityGridView" runat="server"></asp:GridView>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer"></div>
    </form>
</body>
</html>
