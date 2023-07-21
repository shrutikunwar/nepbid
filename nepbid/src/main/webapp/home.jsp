<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <title>Online Bidding System</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/styles/see.css">
  <link rel="stylesheet" href="assets/styles/base.css">
  
  
  <style>
   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

    * {

      margin: 0;

      padding: 0;

      box-sizing: border-box;

      font-family: 'Poppins', sans-serif;

    }



    html,
    body {

      display: grid;

      height: 100vh;

      width: 100%;

      place-items: left;

      background: #e9ecef;

    }







    footer {
      background-color: #f2f2f2;
      padding: 20px;
      margin-top: auto;
      /* Pushes the footer to the bottom */
      background: #E3F2FD;
    }

    .contact-details {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;

    }

    .contact-details ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    .contact-details ul li {
      margin-bottom: 5px;
    }

    .bottom-details {
      text-align: center;
      width: 100%;
      background: #CBC3E3;
    }

    .bottom_text {
      margin-top: 10px;
    }

    .bottom_text a {
      color: #333;
      text-decoration: none;
      margin-left: 0px;
    }

    footer .bottom-details .bottom_text {
      max-width: 1250px;
      margin: auto;
      padding: 10px 20px;


    }
    
    a{
    padding:0px;}

hr{
margin:7px;}
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-black">
  
 <h1 style="color: blue; font-size: 26px;">NEP-BID</h1>


 <div class="topnav">
    <a class="active" href="#"></a>
    <a class="active" href="#"></a>
    <a class="active" href="#"></a>
    <a class="active" href="#"></a>
    <a class="active" href="#"></a>
    <a class="active" href="home.jsp">Home</a>
    <a  href="About.jsp">About Us</a>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


  
<div class="container-fluid">
  <div class="row">
    <div class="col-md-3 sidebar">
      <ul class="list-group">

          <h1 style="color: navy blue; font-size: 24px; text-align:center;">Categories</h1>

          <a href="Shoes.jsp" class="list-group-item">Shoes</a><hr>

          <a href="Bags.jsp" class="list-group-item">Bags</a><hr>

          <a href="Antiques.jsp" class="list-group-item">Antiques</a><hr>

          <a href="Arts.jsp" class="list-group-item">Art</a><hr>

          <a href="Interiors.jsp" class="list-group-item">Interior Furnitures</a><hr>

          <a href="Clothes.jsp" class="list-group-item">Clothes</a>
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
            <img src="assets/images/banner1.png" alt="Slider 1" class="d-block w-100 slider-image" height="300px">
          </div>
          <div class="carousel-item">
            <img src="assets/images/Untitled-1-012.png" alt="Slider 2" class="d-block w-100 slider-image" height="300px">
          </div>
          <div class="carousel-item">
            <img src="assets/images/slider2.png" alt="Slider 3" class="d-block w-100 slider-image" height="300px">
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
  
<h5 style="color: navy blue; font-size: 26px; padding: 0px 0px" align="center">Latest </h5>
<br>


  <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/Selena Gomez Vintage Tshirt.png" alt="Image 1">
      <div class="description">Selena Gomez Vintage <br>Tshirt</div>
      <div class="price">Rs.20,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
       
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Tylor Swift The Eras Tour Beigr Tshirt.png" alt="Image 2">
      <div class="description">Tylor Swift The Eras tour Tshirt</div>
      <div class="price">Rs.20,000</div>
      <div class="links">
       <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Antique chandeliers.png" alt="">
      
      <div class="description">Antique chandeliers</div>
      <div class="price">Rs.60,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Bts loveyourself album.png" alt="Image 4">
      <div class="description">Bts Love Yourself <br> Album</div>
      <div class="price">Rs.5,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
  </div>

    <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/Bts Jimin T shirt.png" alt="Image 1">
      <div class="description">Bts Jimin kids T-shirt </div>
      <div class="price">Rs.20,000</div>
      <div class="links">
       <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Bts Signed Album.png" alt="Image 2">
      <div class="description">Bts Signed Album</div>
      <div class="price">Rs.10,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/BTS Jungkook- Black Chunky Comabt Boots.png" alt="Image 3">
      <div class="description">BTS Jungkook- Black Chunky Comabt Boots</div>
      <div class="price">Rs.50,000</div>
      <div class="links">
        <a href="bid7.html">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Kylie jenner's Rare Nike Sneakers.png" alt="Image 4">
      <div class="description">Kylie jenner's Rare Nike Sneakers</div>
      <div class="price">Rs.1,00,000</div>
      <div class="links">
        <a href="bid8.html">Bid Now</a>
        
      </div>
    </div>
  </div>

  <div class="learn-more">
    <a href="learn-moretoprated.html">Learn More</a>
  </div>
  

   <h6 class="top-categories">Top Categories</h6>

     <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/Art.png" alt="Image 1">
      <div class="description">Image 1 Description</div>
      <div class="price">Rs.20,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Gucci & Balenciaga Bag limited edition.png" alt="Image 2">
      <div class="description">Gucci & Balenciaga Bag limited edition</div>
      <div class="price">Rs.1,50,000</div>
      <div class="links">
       <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Rihanna's Fenty Puma Sneakers.png" alt="Image 3">
      <div class="description">Rihanna's Fenty Puma Sneakers</div>
      <div class="price">Rs.19644.06</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Adidas Stan Smith Golf Shoes Limited Edition.png" alt="Image 4">
      <div class="description">Adidas Stan Smith Golf Shoes Limited Edition</div>
      <div class="price">Rs.60,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
  </div>



  <div class="learn-more">
    <a href="learn-more.html">Learn More</a>
  </div>
  <br>


<div class="banner">
  <img src="assets/images/1.png" alt="1.png">
  <div class="banner-content">
    <h2>NEP-BID</h2>
    <p>"Unleash Your Competitive Spirit </p>
    <p>- Bid, Win, Repeat!"</p>
   <!-- <a href="#" class="btn">Learn More</a> -->
  </div>
</div>

   <h6 class="top-categories">Bid By Categories </h6>

     <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/Pablo Picasso Most Famous Painting.png" alt="Image 1">
      <div class="description">Pablo Picasso Most Famous Painting</div>
      <div class="price">Rs.20,000-10,00,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Masaba Gupta Collaborates with Puma Capsule Sneaker.png" alt="Image 2">
      <div class="description">Masaba Gupta Collaborates with Puma Capsule Sneaker</div>
      <div class="price">Rs.50,000-5,00,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Dior Bags.png" alt="Image 3">
      <div class="description">Dior Bags</div>
      <div class="price">Rs.50,000-3,00,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Vico Magistretti Furniture.png" alt="Image 3">
      <div class="description">Vico Magistretti Furniture </div>
      <div class="price">Rs.20,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
      </div>
    </div>
  </div>

    <div class="image-gallery">
    <div class="image-container">
      <img src="assets/images/Versace Polos and Tshirt for Men.png" alt="">
      <div class="description">Versace Polos and Tshirs for men  </div>
      <div class="price">Rs.10,000-1,00,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Nepali Antiques.png" alt="Image 2">
      <div class="description">Nepali Antiques</div>
      <div class="price">Rs.80,000-6,00,000</div>
      <div class="links">
       <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/Gucci Limited Edition Embroidered and Beaded Trench Coat.png" alt="">
      <div class="description">Gucci Limited Edition Embroidered and Beaded Trench Coat</div>
      <div class="price">Rs.50,000-4,00,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
    <div class="image-container">
      <img src="assets/images/The Barcelona Chairs.png" alt="Image 4">
      <div class="description">The Barcelona Chairs</div>
      <div class="price">Rs.1,00,000-5,00,000</div>
      <div class="links">
        <a href="#">Bid Now</a>
        
      </div>
    </div>
  </div>

  <div class="learn-more">
    <a href="learn-more.html">Learn More</a>
  </div>


<footer>
  <div class="footer-content">
    <div class="footer-section">
      <h3>About Us</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
    <div class="footer-section">
      <h3>Contact Us</h3>
      <p>Email: info@example.com</p>
      <p>Phone: 123-456-7890</p>
    </div>
    <div class="footer-section">
      <h3>Subscribe</h3>
      <form class="subscribe-form">
        <input type="email" placeholder="Enter your email" required>
        <button type="submit">Subscribe</button>
      </form>
    </div>
  </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

  