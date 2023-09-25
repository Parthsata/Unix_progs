<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connectivity.aspx.cs" Inherits="Connectivity.Connectivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Roll No"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click1" />
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Select" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
