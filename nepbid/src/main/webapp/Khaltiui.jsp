<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Seller Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
  </style>
</head>
<body>
<style>
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
}
</style>
<!-- Custom styles for this template -->
<link href="./Pricing example · Bootstrap_files/pricing.css" rel="stylesheet">
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>NepBid</b></p>
  <nav class="my-2 my-md-0 mr-md-3">
    <a class="p-2 text-dark" href="home.jsp">Home</a>
    <a class="p-2 text-dark" href="product.jsp">Products</a>
    <a class="p-2 text-dark" href="About.jsp">About Us</a>
    <a class="p-2 text-dark" href="Help.jsp">Help</a>
    <a class="p-2 text-dark" href="Feedback.jsp">Feedback</a>
  </nav>
  <a class="btn btn-outline-primary mr-3" href="home.jsp">Logout</a>
</div>
<div class="container">
  <h1 style="color: navy; font-size: 26px; padding: 0px 0px" align="center">Add New Product Page</h1>

  <form action="Addnewproduct" method="post" enctype="multipart/form-data">
  
    <div class="form-group">
      <label for="item-name">Name of Product</label>
      <input name="productname" type="text" id="name" class="form-control" placeholder="Enter item name" required>
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <input name="description" type="text" id="description" class="form-control" placeholder="Enter item description" required></textarea>
    </div>
    <div class="form-group">
      <label for="category">Category</label>
      <select name="category" id="category" class="form-control" type="text" required>
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
      <label for="min-price">Starting Bid Price</label>
      <input name="bidprice" type="text" id="bidprice" class="form-control" placeholder="Enter starting price" required>
    </div>
    <div class="form-group">
      <label for="bidtime">Bid Time</label>
      <select name="bidtime" type="text" id="bidtime" class="form-control" required>
        <option value="3">3 days</option>
        <option value="7">7 days</option>
        <option value="30">30 days</option>
      </select>
    </div>
    <div class="form-group">
      <label for="image">Upload Image</label>
      <input type="file" name="image" id="image" class="form-control-file" required />
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  <div class="message-box">
            <c:if test="${not empty message}">
                <span class="message ${success ? 'success' : 'error'}">${message}</span>
            </c:if>
        </div>
  
  
</div>
</body>
</html>