<%@ Page Language="C#" AutoEventWireup="true" CodeFile="effecom.aspx.cs" Inherits="effecom" %>

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
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-decoration: underline;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
  <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('images/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <h3> <strong>Bunso company</strong></h3><br>
            <h3> Merci pour nous avoir choisis</h3>
            <h3>Nous vous offrons le meuilleur, et sommes</h3>
            <h3> Toujours a votre proposotion</h3><br>
           
            <form action="#" method="post">
              

              <div class="btn btn-block btn-primary">
              
                  <strong><em>
              
                 <asp:Menu ID="Menu1" runat="server" CssClass="auto-style1">
            <Items>
                <asp:MenuItem  NavigateUrl="~/Commandes.aspx" Text="Effectuer une commande" Value="Effectuez une commande"></asp:MenuItem>
            </Items>
        </asp:Menu>
                  </em></strong>
              </div>

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
