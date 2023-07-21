<!DOCTYPE html>
<html>
<head>
  <title>Ebid</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <link rel="stylesheet" href="assets/styles/contactus.css">
    <link rel="stylesheet" href="assets/styles/see.css">

<style type="text/css">
    footer {

      background: #E3F2FD;

      color: black;

      width: 100%;

      padding: 10px 10px 10px 10px;

    }



    footer .content {

      max-width: 1250px;

      margin: auto;

      padding: 10px 10px 10px 10px;

    }



    footer .content .top {

      display: flex;

      align-items: center;

      justify-content: space-between;

      margin-bottom: 10px;
      /* Decrease the margin-bottom value */

    }



    footer .content .top .logo-details {

      font-size: 24px;

    }



    footer .content .top .logo-details .logo_name {

      margin-right: 5px;

    }



    .content .top .company {

      font-size: 24px;

    }



    footer .content .link-boxes {

      width: 100%;

      display: flex;

      justify-content: space-between;

    }



    footer .content .link-boxes .box {

      width: calc(100% / 5 - 10px);

    }



    .content .link-boxes .box .link_name {

      font-size: 18px;

      font-weight: 400;

      margin-bottom: 10px;

      position: relative;

    }



    .footer .content .link-boxes .box li {

      margin: 6px 0;

      list-style: none;

    }



    .footer .content .link-boxes .box li a {

      font-size: 14px;

      font-weight: 400;

      text-decoration: none;

      opacity: 0.8;

      transition: all 0.4s ease;

    }



    .footer .content .link-boxes .box li a:hover {

      opacity: 1;

      text-decoration: underline;

    }



    footer .bottom-details {

      width: 100%;

      background: white;

    }



    footer .bottom-details .bottom_text {

      max-width: 1250px;

      margin: auto;

      padding: 10px 20px;

      display: flex;

      justify-content: space-between;

    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-black">
  
 <h1 style="color: blue; font-size: 26px;">NEP-BID</h1>


 <div class="topnav">
    <a class="active" href="#"></a>
     <a class="active" href="#"></a>
     <a class="active" href="#"></a>
    <a class="active" href="home.jsp">Home</a>
    <a href="About.jsp">About Us</a>
    <a href="HelpSection.Jsp">Help Section</a>
    <a href="contactus.jsp">Contact Us </a>
  

      
</div>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <form class="form-inline">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
        </form>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Adminlogin.jsp">Login</a>
      </li>
    </ul>
  </div>


</nav>

  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Baneshwor</div>
          <div class="text-two">Kathmandu,Nepal</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">9800000000</div>
          <div class="text-two">9810000000</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">abcd@gmail.com</div>
          <div class="text-two">xyz@apexcollege.edu.np</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>If you have any types of quries , you can send me message from here.</p>
      <form action="#">
        <div class="input-box">
          <input type="text" placeholder="Enter your name">
        </div>
        <div class="input-box">
          <input type="text" placeholder="Enter your email">
        </div>
        <div class="input-box message-box">
          
        </div>
        <div class="button">
          <input type="button" value="Send Now" >
          <input type="button" Value="SignUp">
        </div>
        
      </form>
    </div>
    </div>
  </div>
  <footer>
    <div class="content">
      <div class="top">
        <div class="logo-details">
          
          <span class="logo_name">NEP-BID</span>
        </div>
      </div>
      <div class="link-boxes">
        <ul class="box">
          <li class="link_name">Company</li>
          <li><a href="#">Home</a></li>
          <li><a href="#">Contact us</a></li>
          <li><a href="#">About us</a></li>
          <li><a href="#">Get started</a></li>
        </ul>
        <ul class="box">
          <li class="link_name">Services</li>
          <li><a href="#">Buyying</a></li>
          <li><a href="#">Selling</a></li>
          <li><a href="#">Payment</a></li>
        </ul>
        <ul class="box">
          <li class="link_name">Account</li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">My account</a></li>
          <li><a href="#">Prefrences</a></li>
          <li><a href="#">Purchase</a></li>
        </ul>
      </div>
    </div>
    <div class="bottom-details">
      <div class="bottom_text">
        <span class="copyright_text">Copyright © 2023  <a href="#">NEP-BID</a>All rights reserved</span>
        <span class="policy_terms">
          <a href="#">Privacy policy</a>
          <a href="#">Terms & condition</a>
        </span>
      </div>
    </div>
  </footer>
  
</body>
</html>