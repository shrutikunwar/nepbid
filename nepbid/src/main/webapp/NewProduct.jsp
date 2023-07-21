<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Seller Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="./Pricing example · Bootstrap_files/pricing.css" rel="stylesheet">
  <style>
    body {
      padding: 20px;
      background-image: url('wp.jpg');
      background-repeat: no-repeat;
      background-size: cover;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      background-color: lightb;
    }

    .form-group {
      margin-bottom: 20px;
    }
  
.bd-placeholder-img {
font-size: 1.125rem;
text-anchor: middle;
-webkit-user-select: none;
-moz-user-select: none;
-ms-user-select: none;
user-select: none;
}
@media (min-width: 768px) {
.bd-placeholder-img-lg {
font-size: 3.5rem;
}

   #top-navbar {
      background-color: #343a40;
      color: #fff;
      width:100%;
      margin-top:-15px;
    }

}
	
</style>
</head>



<body>

 <nav id="top-navbar" class="navbar navbar-expand-lg navbar-dark bg-dark" >
    <a class="navbar-brand" href="#">NEP-BID</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
       
        <li class="nav-item">
          <a class="nav-link" href="sellerpanel.jsp">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="product.jsp">ProductDetails</a>
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
  
<div class="container">
  <h1 style="color: navy; font-size: 26px; padding: 5px 0px" align="center">Add New Product Page</h1>
  <form action="Addproduct" method="post" enctype="multipart/form-data">
  
    <div class="form-group">
      <label for="exampleInputEmail1">Name of Product</label>
      <input name="name" type="text" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
      
    <div class="form-group">
      <label for="exampleInputEmail1">Description</label>
      <input name="description" type="text" id="exampleInputEmail1" class="form-control">
    </div>
    
    
    <div class="form-group">
      <label for="inputState">Category</label>
      <select name="category" id="inputState" class="form-control">
        <option value="">Select a category</option>
        <option value="shoes">Shoes</option>
        <option value="bags">Bags</option>
        <option value="antiques">Antiques</option>
        <option value="arts">Arts</option>
        <option value="books">Books</option>
        <option value="interior">Interior</option>
        <option value="cameras">Cameras</option>
      </select>
    </div>
    
    
    <div class="form-group">
      <label for="exampleInputPassword1">Starting Bid Price</label>
      <input name="bidprice" type="number" id="exampleInputPassword" class="form-control">
    </div>
    
    <div class="form-group">
      <label for="exampleInputPassword1">Sellerid</label>
      <input name="sellerid" type="number" id="sellerid" class="form-control">
    </div>

    
    <div class="form-group">
      <label for="exampleFromControlFile1">Upload Image</label>
      <input name="image" type="file" class="form-control-file" id="exampleFormControlFile1">
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
  
 
</body>
</html>