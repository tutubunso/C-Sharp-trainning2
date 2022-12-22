<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Factures.aspx.cs" Inherits="Factures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Produits"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="165px" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Montant paye"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Reste"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Gener votre facture"></asp:Label>
    
    </div>
    </form>
</body>
</html>
