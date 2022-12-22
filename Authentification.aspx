<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Authentification.aspx.cs" Inherits="Authentification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Login #2</title>
</head>
<body style="height: 200px">
    <form id="form1" runat="server">
     <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('images/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <h3>Login to <strong>Bunso company</strong></h3>
            <p class="mb-4">nous vous afrons le meilleur pour votre cuisine</p>
            <form action="#" method="post">
              <div class="form-group first">
                  <strong><label for="username">Username</label></strong>
                
                <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="your username here ..."></asp:TextBox>
              </div>
              <div class="form-group last mb-3">
                
                  <strong><label for="password">Password</label></strong>
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="your password here..." OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
              </div>
              <div class="form-group last mb-3">
               
                  <strong> <label for="password">Statut</label></strong>
                <asp:DropDownList cssClass="form-control" ID="DropDownList1" runat="server" >
                    <asp:ListItem>Choisissez</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Client</asp:ListItem>
                </asp:DropDownList>
              </div>
              
              <div class="d-flex mb-5 align-items-center">
              
                 <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Personnes.aspx" Text="creer votre compte" Value="creer votre compte"></asp:MenuItem>
                </Items>
            </asp:Menu>
              </div>

              <asp:Button class="btn btn-block btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Se Connecter" />

            </form>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    </form>

</body>
</html>
