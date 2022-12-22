<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Paies.aspx.cs" Inherits="Paies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label3" runat="server" Text="Produit  a payer"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="207px">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Montant Paye"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Paye Via"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="201px">
            <asp:ListItem>votre choix</asp:ListItem>
            <asp:ListItem>Western Union</asp:ListItem>
            <asp:ListItem>Ihela</asp:ListItem>
            <asp:ListItem>Lumicash</asp:ListItem>
            <asp:ListItem>Ecocash</asp:ListItem>
            <asp:ListItem>Pesa Flash</asp:ListItem>
        </asp:DropDownList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Payer" />
    
    </div>
    </form>
</body>
</html>
