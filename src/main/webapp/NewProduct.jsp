<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page errorPage="ErrorPage.jsp" %>
<%@page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>

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
      <input name="sellerid" type="hidden" value=<%=(String) session.getAttribute("aid") %> id="sellerid" class="form-control">
    </div>

    
    <div class="form-group">
      <label for="exampleFromControlFile1">Upload Image</label>
      <input name="image" type="file" class="form-control-file" id="exampleFormControlFile1">
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  	
</div>
<div class="message-box">
	<%  String s =(String) request.getAttribute("message"); 
	
		if(s != null){
	%>
                <span class="message "><%=s %></span>
                
                <%
		}
                %>
                
                
        </div>
  
 
</body>
</html>