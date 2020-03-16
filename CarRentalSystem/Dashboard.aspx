<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CarRentalSystem.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard </title>

    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
            <div class="row" style="background-color:white;">
                <div class="col-md-6">
                      <h1><a href="AddCar.aspx">Add Car </a></h1>   
                      <h1><a href="BookCar.aspx"> Car Booking</a></h1>   
                      <h1><a href="Payment.aspx">Payment </a></h1> 
                      <h1><a href="ContactDisplay.aspx">Contact Details </a></h1> 


                </div>

            </div>
           
        </div>
    </form>
</body>
</html>
