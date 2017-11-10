<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/users.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="top">
        </div>
        <div id="container">
            <div class="content">
                <table>
                    <tr>
                        <th>
                            <asp:Label ID="Label1" runat="server" Text="公告标题" Font-Size="20px"></asp:Label>
                        </th>
                        <th>
                            <asp:TextBox ID="TextBox1" CssClass="box" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label2" runat="server" Text="上传word文档" Font-Size="20px"></asp:Label>
                        </th>
                        <th colspan="2">
                            <asp:FileUpload ID="FileUpload1" CssClass="box" runat="server" Width="80px" EnableTheming="True" />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label3" runat="server" Text="公告类型"></asp:Label>
                        </th>
                        <th>
                            <asp:DropDownList ID="DropDownList1" CssClass="box" runat="server" Width="100px">
                                <asp:ListItem> </asp:ListItem>
                                 <asp:ListItem Value="1">信息公告</asp:ListItem>
                                <asp:ListItem Value="2">政策法规</asp:ListItem>
                                <asp:ListItem Value="3">收费项目公示</asp:ListItem>
                                <asp:ListItem Value="4">学分制规定和公示</asp:ListItem>
                            </asp:DropDownList>
                        </th>
                        <th>
                            <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" />
                        </th>
                    </tr>
                </table>
            </div>
        </div>
        <div id="footer">
            <div id="footer_content1">
                <p>
                    Copyright ©1959-2017 浙江中医药大学 
                </p>
            </div>
            <div id="footer_content2">
                <p>
                    地址：浙江省杭州市滨江区滨文路548号（310053）校办电话：0571-86633077 0571-86633177 传真：0571-86613500 
                </p>
            </div>
        </div>
    </form>
</body>
</html>
