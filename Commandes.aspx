<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Commandes.aspx.cs" Inherits="Commandes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login V13</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
  <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body style="background-color: #999999;">
    <form id="form1" runat="server">
       <div class="limiter">
    <div class="container-login100">
      <div class="login100-more" style="background-image: url('images/2.jpg');"></div>

      <div class="wrap-login100 p-l-40 p-r-40 p-t-2 p-b-40">
        <form class="login100-form validate-form">
          <span class="login100-form-title p-b-59">
            BON DE COMMANDE
          </span>

          <div class="input100 validate-input" data-validate="Name is required">
            <span class="label-input100"> PRODUITS</span>
            <asp:DropDownList  ID="DropDownList1" runat="server" Height="28px" Width="192px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
            
          </div><br />

          
          <div class="input100 validate-input" data-validate="Name is required">
            <span class="label-input100">QUANTITE</span>
            <asp:DropDownList  ID="DropDownList2" runat="server" Height="32px" Width="188px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
            
          </div><br />

         
          <div class="wrap-input100 validate-input" >
            <span class="label-input100">TOTAL</span>
            <asp:TextBox class="input100" ID="TextBox1" runat="server" Width="175px"></asp:TextBox>
            
          </div>

          

          <div class="container-login100-form-btn">
           
              
              <asp:Button class="btn btn-block btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Commander" />
            </div><br />
             <center><h5>Veuillez choisir</h5></center>
        <center><h5>La Quantite </h5></center>
        <center><h5>En premier lieu Svp!!</h5></center>
    </div>
              

        </form>
         
      </div><br />
        

  </div>
  
<!--===============================================================================================-->
  <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/bootstrap/js/popper.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/daterangepicker/moment.min.js"></script>
  <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
  <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script src="js/main.js"></script>

    </form>
</bod>
</html>
