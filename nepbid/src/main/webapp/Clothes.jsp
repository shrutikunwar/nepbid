<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <title>Bootstrap Navigation Bar</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


  <style type="text/css">
    .h1 {
      text-align: right;
      text-decoration-color;
      width: 40px;
      height: 30px;
    }

    .topnav {
      overflow: hidden;

    }

    /* Style the links inside the navigation bar */
    .topnav a {
      float: left;
      display: block;
      color: black;
      text-align: right;
      padding-left: 20px;
      padding-top: 20px;
      text-decoration: none;
      font-size: 17px;
      box-shadow: #f5f5f5;
    }




    .banner {
      text-align: center;
      margin-top: 40px;
    }



    .banner {
      text-align: center;
      margin-bottom: -16rem;
    }


    .banner {
      position: relative;
      width: 100%;
      height: 700px;
      overflow: hidden;

    }

    .banner img {
      width: 100%;
      height: 65%;
      object-fit: cover;
      max-width: auto;
      max-width: auto;
    }

    .banner-content h2 {
      font-size: 50px;
      margin-bottom: 10px;
    }

    .banner-content p {
      font-size: 30px;
      margin-bottom: 20px;
    }

    .banner-content .btn {
      display: inline-block;
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
    }

    .banner-content .btn:hover {
      background-color: #45a049;
    }

    .image-gallery {
      display: flex;
      justify-content: space-between;
      padding: 10px;
    }

    .image-container {
      flex: 0 0 20%;
      margin-bottom: 20px;
      text-align: center;
      display: flex;
      flex-direction: column;
      padding: 10px;
      background-color: #f5f5f5;
      transition: background-color 0.3s ease;
    }

    .image-container:hover {
      background-color: #cfd8dc;
    }

    .image-container img {
      max-width: 100%;
      height: auto;
    }

    .image-container .description {
      margin-top: 10px;
    }

    .image-container .links {
      display: flex;
      justify-content: space-between;
      margin-top: 10px;
    }

    .image-container .links a {
      flex: 1;
      margin: 0 5px;
    }

    .learn-more {
      text-align: right;
      margin-top: 20px;
      padding-right: 10px;
    }


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

  <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">



    <p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>NepBid</b></p>

    <nav class="my-2 my-md-0 mr-md-3">

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
          </li>
          <li class="nav-item">

          </li>
          <li class="nav-item">
            <a class="nav-link" href="signup.html">Sign Up</a>
          </li>
        </ul>
      </div>




      <a class="p-2 text-dark" href="home.jsp">Home</a>

      <a class="p-2 text-dark" href="product.jsp">Products</a>
      
       <a class="p-2 text-dark" href="Team.jsp">Team</a>

      <a class="p-2 text-dark" href="About.jsp">About Us</a>





      <a class="btn btn-outline-primary mr-3" href="Adminlogin.jsp">Admin Login</a>

      <a class="btn btn-outline-primary" href="Userlogin.jsp">User Login</a>

  </div>

  </nav>


  <div class="banner">
    <img src="assets/images/cloth banner new .png">

  </div>

  <br>




  <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/nike comfy clothes 1.png" alt="Image 1">
      <div class="description">nike comfy clothes</div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/women's leather bijer jacket 1.png" alt="Image 2">
      <div class="description">women's leather bijer jacket 1.png</div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/plain tuxedo men suit 1.png" alt="Image 3">
      <div class="description">plain tuxedo men suit </div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Filipinisana dress semi formal dress 1.png" alt="Image 4">
      <div class="description">Filipinisana dress semi formal dress </div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
  </div>

  <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/ball gowns dress 1.png" alt="Image 1">
      <div class="description">ball gowns dress</div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/gucci shirt 1.png" alt="Image 2">
      <div class="description">gucci shirt</div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Gucci Beige Unisex hoodie 2.png" alt="Image 3">
      <div class="description">Gucci Beige Unisex hoodie</div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/hm_office_wearblazer_ 1.png">
      <div class="description">h&m women's carrer office wear</div>
      <div class="links">
        <a href="bid.html">Bid Now</a>
        <a href="view.html">View</a>
      </div>
    </div>
  </div>



  <footer>

    <div class="content">

      <div class="top">

        <div class="logo-details">

          <i class="fab fa-slack"></i>

          <span class="logo_name">NEP-BID</span>

        </div>

      </div>

      <div class="link-boxes">

        <ul class="box">

          <a class="link_name">Company</a>

          <li><a href="#">Home</a></li>

          <li><a href="#">Contact us</a></li>

          <li><a href="#">About us</a></li>

          <li><a href="#">Get started</a></li>

        </ul>

        <ul class="box">

          <a class="link_name">Services</a>

          <li><a href="#">Buying</a></li>

          <li><a href="#">Selling</a></li>

          <li><a href="#">Payment</a></li>

        </ul>

        <ul class="box">

          <a class="link_name">Account</a>

          <li><a href="#">Profile</a></li>

          <li><a href="#">My account</a></li>

          <li><a href="#">Preferences</a></li>

          <li><a href="#">Purchase</a></li>

        </ul>

      </div>

    </div>

    <div class="bottom-details">

      <div class="bottom_text">

        <span class="copyright_text">Copyright � 2023

          <a href="#000000">NEP-BID</a> All rights reserved

        </span>

        <span class="policy_terms">

          <a href="#000000">Privacy policy</a>

          <a href="#000000">Terms & conditions</a>

        </span>

      </div>

    </div>

  </footer>




  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>