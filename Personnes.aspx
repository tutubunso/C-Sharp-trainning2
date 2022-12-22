﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personnes.aspx.cs" Inherits="Personnes" %>

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
			<div class="login100-more" style="background-image: url('images/cui.jpg');"></div>

			<div class="wrap-login100 p-l-40 p-r-40 p-t-2 p-b-40">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-59">
						GET REGISTER
					</span>

					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100"> NOM </span>
						<asp:TextBox class="input100" ID="TextBox1" runat="server" placeholder="Name..........."></asp:TextBox>
						
					</div>

					
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">PRENOM</span>
						<asp:TextBox class="input100" ID="TextBox2" runat="server" placeholder="Prenom..........."></asp:TextBox>
						
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<asp:TextBox class="input100" ID="TextBox3" runat="server" placeholder="mail............."></asp:TextBox>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">USER NAME</span>
						<asp:TextBox class="input100" ID="TextBox4" runat="server" placeholder="Username..........."></asp:TextBox>
						
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<asp:TextBox class="input100" ID="TextBox5" runat="server" TextMode="Password" placeholder="*************"></asp:TextBox>
					</div>

					<div class="container-login100-form-btn">
						
							<asp:Button class="btn btn-block btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="CREER" />
						</div>

				</form>
			</div>
		</div>
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
