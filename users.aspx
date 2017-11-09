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
        <select>
            <option value ="1">政策法规</option>
            <option value ="2">收费项目公示</option>
            <option value="3">学分值规定和指定</option>
       </select>
        <asp:Button ID="Button1" runat="server" Text="上传" />
    </div>
    </form>
</body>
</html>
