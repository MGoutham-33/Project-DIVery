<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="orders.AssignedOrders" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery</title>
 <link rel="stylesheet" href="./assests/css/inv_dashboard.css">
    <link rel="shortcut icon" type="image/x-icon" href="./assests/css/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
 <body onload="myFunction()">
<div id="loading"></div>
<input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>DIVery <span>Delivery</span></h3>
      </div>
      <div class="right_area">
        <a href="dli_login.jsp" class="logout_btn" onclick="logout()">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">
        <img src="./assests/css/dli.jpg" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
      </div>
      <div class="mobile_nav_items">
        <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
        <a href="dli_orders.jsp"><i class="fas fa-cogs"></i><span>Orders</span></a>
        <a href="abouts.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
        <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
      </div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
        <img src="./assests/css/dli.jpg" class="profile_image" alt="">
        <h4>Agent</h4>
      </div>
      <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
      <a href="dli_orders.jsp"><i class="fas fa-cogs"></i><span>Orders</span></a>
      <a href="abouts.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
      <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
    </div>
    <!--sidebar end-->

    <div class="content">
    <h4>orders</h4>
     <div class="card">
         order ID &nbsp;:&nbsp;<%= request.getAttribute("oid") %><br><br><br><br>
         Customer name &nbsp;:&nbsp;<%= request.getAttribute("cname") %><br><br><br><br>
         ordered product &nbsp;:&nbsp;<%= request.getAttribute("product") %><br><br><br><br>
         price &nbsp;:&nbsp;<%= request.getAttribute("price") %> $<br><br><br><br>
         customer phone  &nbsp;:&nbsp;<%= request.getAttribute("cphone") %><br><br><br><br>
         customer address  &nbsp;:&nbsp;<%= request.getAttribute("cadd") %><br><br><br><br>
         Delivered&nbsp;<input type="checkbox" name="check"><br><br><br>Not Delivered ?<br>Reason&nbsp; : &nbsp;
         <select>
         <option>Wrong Address</option>
         <option>Wrong Product</option>
         <option>Damaged product</option>
         <option>Product Expired</option>
         <option>Door Locked</option>
         <option>Wrong Name</option>
         </select>
    </div>
    </div>
    <script type="text/javascript">
    $(document).ready(function(){
      $('.nav_btn').click(function(){
        $('.mobile_nav_items').toggleClass('active');
      });
    });
    </script>
</body>
<script type="text/javascript" src="./assests/js/main.js">
</script>
</html>