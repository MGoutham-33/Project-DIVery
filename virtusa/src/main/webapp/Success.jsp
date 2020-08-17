<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="orders.Invorder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invalid</title>
<link rel="shortcut icon" type="image/x-icon" href="./assests/css/favicon.ico">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="./assests/css/loginStyle.css">
<style>
.box a{
color:#2ecc71;
}
.footer{
margin-top:45.5%;
}
</style>
</head>
<body onload="myFunction()">
<div id="loading"></div>
<div class="box">
<h1>Successfully Assigned delivery to <%= request.getAttribute("aname") %></h1><br/>
<i class="fas fa-arrow-circle-left fa-2x"></i><a href="orders.jsp">&nbsp;Return&nbsp;to&nbsp;Assign orders&nbsp;page</a>
</div>
</body>
<script type="text/javascript" src="./assests/js/main.js"></script>
<div class="footer">
        Copyright &copy; 2020 All rights reserved&nbsp;&nbsp;
        <a href="#">Privacy Policy</a>
        &middot;
        <a href="#">Terms &amp; Conditions</a>
</div>
</html>