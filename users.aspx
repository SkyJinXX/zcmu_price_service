<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     文档名称：
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br/>
        上传word文档
        <asp:FileUpload ID="FileUpload1" runat="server" Width="80px" EnableTheming="True" />
        <br/>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem Value="1">政策法规</asp:ListItem>
                        <asp:ListItem Value="2">收费项目公示</asp:ListItem>
                        <asp:ListItem Value="3">学分制规定和公示</asp:ListItem>
                    </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
