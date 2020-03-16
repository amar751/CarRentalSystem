﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarRentalSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"> </script>

    <style>
        h1 {
            color:white;
        }
        ul {
            background-color:white;
        }
        ul li {
            border:0px solid red;
            height:50px;
            width:120px;
            margin-left:30px;
            display:inline-table;
            list-style:none;
            text-align:center;
            font-size:30px;
            line-height:50px;
            padding:10px;
            color:white;
        }
            ul li:hover {
                background-color:black;
            }
    </style>
</head>
<body style="background-color:cornflowerblue;">

      <h1> Car Rental Management System </h1> 
    <ul>
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Login.aspx">Login</a></li>
        
        <li><a href="Contact.aspx">Contact</a></li>

    </ul>

    <form id="form1" runat="server">
    
           <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group-lg">
                        <label>Enter Name </label>
                        <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group-lg">
                        <label>Enter Password </label>
                        <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </div>
                   

                    <div class="form-group-lg">

                        <asp:Button ID="BtnMessage" runat="server" Text="Sign In " class="btn btn-primary" OnClick="BtnMessage_Click"  />
                    </div>

                </div>

                <h1 id="rslt" runat="server"> </h1>
            </div>
        </div>



    </form>
</body>
</html>
