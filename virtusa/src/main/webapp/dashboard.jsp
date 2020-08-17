<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Inventory</title>
    <link rel="stylesheet" href="./assests/css/inv_dashboard.css">
    <link rel="shortcut icon" type="image/x-icon" href="./assests/css/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    
  </head>
  <body onload="myFunction()">
<div id="loading"></div>
 <script type="text/javascript" src="./assests/js/main.js"></script>
     <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>DIVery <span>Inventory</span></h3>
      </div>
      <div class="right_area">
        <a href="inv_login.jsp" class="logout_btn" onclick="logout()">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">
        <img src="./assests/css/It.jpg" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
      </div>
      <div class="mobile_nav_items">
        <a href="dashboard.jsp"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
        <a href="warehouse.jsp"><i class="fas fa-cogs"></i><span>Warehouse</span></a>
        <a href="orders.jsp"><i class="fas fa-th"></i><span>Assign orders</span></a>
        <a href="about.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
        <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
      </div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
        <img src="./assests/css/It.jpg" class="profile_image" alt="">
      </div>
      <a href="dashboard.jsp"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
      <a href="warehouse.jsp"><i class="fas fa-cogs"></i><span>Warehouse</span></a>
      <a href="orders.jsp"><i class="fas fa-th"></i><span>Assign orders</span></a>
      <a href="about.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
      <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
    </div>
    <!--sidebar end-->

    <div class="content">
    <div class="message"><h1>Welcome to <i>Dashboard</i></h1></div> 
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