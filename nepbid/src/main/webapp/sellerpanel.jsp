<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Seller Dashboard</title>
  <!-- Bootstrap CSS Link (Replace with the appropriate version) -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Custom CSS to adjust the top navigation and content area */
    body {
      margin: 0;
      padding: 0;
    }
    #top-navbar {
      background-color: #343a40;
      color: #fff;
    }
    #content {
      padding-top: 20px;
    }
  </style>
</head>
<body>
  <!-- Top Navigation -->
  <nav id="top-navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">NEP-BID</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
       
        <li class="nav-item">
          <a class="nav-link" href="NewProduct.jsp">Add New Product </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="productdata.jsp">View products data</a>
        </li>

			<li class="nav-item">
          <a class="nav-link" href="ProductAllotment.jsp">Product Allotment</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="home.jsp">Log Out </a>
         </li>
      </ul>
    </div>
  </nav>
        <!-- Your main content goes here -->
        <h1 style="text-align: center; padding-bottom:10px">Seller Dashboard</h1>
       
        <div class="container-fluid">

          <div class="row">
         
          <div class="col-md-3 sidebar">
         
          <ul class="list-group">
         
          <h1 style="color: navy blue; font-size: 24px; padding: 15px">About sellers</h1>
                 
          <li class="list-group-item active">Sellers are entities that provide assets for purchase. 
          
          Buyers are those who want to purchase goods or services. These two parties normally come 
          together at different venues to conduct their business, including auctions (live and online),
           the stock market, and retail outlets.</li>
 
         
          </ul>
         
          </div>
         
          <div class="col-md-9">
         
          <div id="carouselExample" class="carousel slide" data-ride="carousel">
         
          <ol class="carousel-indicators">
         
          <li data-target="#carouselExample" data-slide-to="0" class="active"></li>
         
          <li data-target="#carouselExample" data-slide-to="1"></li>
         
          <li data-target="#carouselExample" data-slide-to="2"></li>
         
          </ol>
         
          <div class="carousel-inner">
         
          <div class="carousel-item active">
         
          <img src="assets/images/Untitled-1-01.png" alt="Slider 1" class="d-block w-100 slider-image" height="300px" padding top = "20px">
         
          </div>
         
          <div class="carousel-item">
         
          <img src="assets/images/slider2.png" alt="Slider 2" class="d-block w-100 slider-image" height="300px">
         
          </div>
         
          <div class="carousel-item">
         
          <img src="assets/images/banner3.PNG" alt="Slider 3" class="d-block w-100 slider-image" height="300px">
         
          </div>
         
          </div>
         
          <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
         
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         
          <span class="sr-only">Previous</span>
         
          </a>
         
          <a class="carousel-control-next" href="#carouselExample" role="button" data-slide="next">
         
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
         
          <span class="sr-only">Next</span>
         
          </a>
         
          </div>
         
          </div>
         
          </div>
         
         </div>
         
         
         
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
         
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     
      <!-- Seller Table -->
     
<!-- Bootstrap JS Link (Replace with the appropriate version) -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
       
  <!-- Bootstrap JS Link (Replace with the appropriate version) -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
