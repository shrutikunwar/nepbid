<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Change Password</title>
  <!-- Bootstrap CSS Link (Replace with the appropriate version) -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>

    


    /* Custom CSS to style the form */
    body {
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 400px;
      margin: 40px auto;
      border: 1px solid #ccc;
      padding: 20px;
    }
    .form-group label {
      font-weight: bold;
    }
    .btn-cancel {
      margin-right: 10px;
    }
    
    a{
    color:white;
    }

    
  </style>
</head>
<body>
     <nav id="top-navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">NEP-BID</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <!-- Top Navigation Items -->
         <li class="nav-item">
          <a class="nav-link" href="Admin?action=default">Home</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="Admin?action=productDetails">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Admin?action=bidderDetails">Bidders</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="Admin?action=sellerdetails">Sellers</a>
          </li>


          <li class="nav-item">
            <a class="nav-link" href="home.jsp">Logout</a>
          </li>
      </ul>
    </div>
  </nav>
       
       

  <div class="container">
   
    <form action="update" method ="post">
        <div class="form-group">
            <label for="changePassword">Admin Id</label>
            <input type="password" class="form-control" id="id" name="id" required>
          </div>
      <div class="form-group">
        <label for="oldPassword">Old Password:</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>

      <!-- New Password Field -->
      <div class="form-group">
        <label for="newPassword">New Password:</label>
        <input type="password" class="form-control" id="newpassword" name="newpassword" required>
      </div>

      <!-- Confirm Password Field -->
      <div class="form-group">
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" class="form-control" id="confirmnewpassword" name="confirmnewpassword" required>
      </div>

      <!-- Submit and Cancel Buttons -->
      <div class="form-group">
        <button type="submit" class="btn btn-primary">Reset Password</button>
        <button type="button" class="btn btn-secondary btn-cancel"><a href="Admin?action=default">Cancel</a></button>
      </div>
        
    </form>
    <div class="message-box">
            <c:if test="${not empty message}">
                <span class="message ${success ? 'success' : 'error'}">${message}</span>
            </c:if>
        </div>
   
    </div>
    
      
  

  <!-- Bootstrap JS Link (Replace with the appropriate version) -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
 