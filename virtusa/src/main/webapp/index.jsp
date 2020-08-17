<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DIVery</title>
    <link rel="shortcut icon" type="image/x-icon" href="./assests/css/favicon.ico">
    <link type="text/css" rel="stylesheet" href="./assests/css/welcome_page.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body onload="myFunction()">
<div id="loading">loading</div>
    DIVery 
    <div class="box">
        <a href="#Home">Home</a>
        <a href="#About">About</a>
        <a href="#contact">Contact us</a>
        <a href="#Login">Login</a>
     </div>
<div class="info"></div>
    <div id="Home">
        <br><br><br>
        <h1>Welcome to DIVery</h1>
        <a href="#Login">Login</a>
    </div>
    <div id="About">
        <h2>About us</h2>
        <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        Temporibus, vero assumenda! Architecto, eaque. Dolores reprehenderit est commodi 
        qui nemo neque minima soluta! Eum dicta 
        eius pariatur soluta. Optio, voluptatum accusamus.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        Temporibus, vero assumenda! Architecto, eaque. Dolores reprehenderit est commodi 
        qui nemo neque minima soluta! Eum dicta 
        eius pariatur soluta. Optio, voluptatum accusamus.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        Temporibus, vero assumenda! Architecto, eaque. Dolores reprehenderit est commodi 
        qui nemo neque minima soluta! Eum dicta 
        eius pariatur soluta. Optio, voluptatum accusamus.
    </p>
    </div>
    <div id="contact">
        <h1>Contact us</h1>
        <h5>we would love to respond to your queries and help you succeed</h5>
        <div class="box">
        <div class="container">
        <form action="#">
            <h4>Send your query</h4>
            <label>Name :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="Name" required><br>
            <label>Phone no :</label><input type="text" placeholder="phone number" required><br>
            <label>E-mail :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" placeholder="E-Mail" required><br><br>
            <label>Message :</label><br><br>
            <textarea placeholder="Please write your message here" required></textarea><br><br>
            <input type="submit" value="submit">
         </form>
        </div>
    </div>
    </div>
    <div id="Login">
        <br><br><br><br><br><br><br><br><br><br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="inv_login.jsp">Inventory Team</a>
        <a href="dli_login.jsp">Delivery Agent</a>
    </div>
    <div class="arrow">
        <a href="#"><i class="fas fa-arrow-circle-up fa-3x"></i></a>
    </div>
    <div class="footer">
        Copyright &copy; 2020 All rights reserved&nbsp;&nbsp;
        <a href="#">Privacy Policy</a>
        &middot;
        <a href="#">Terms &amp; Conditions</a>
      </div>
</body>
<script type="text/javascript" src="./assests/js/main.js"></script>
</html>