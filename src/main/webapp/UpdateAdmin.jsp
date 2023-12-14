<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="ErrorPage.jsp" %>        
    
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
   
  <div class="container">
   
    <form action="update" method ="post">
            <input type="hidden" class="form-control" id="id" name="id" value="<%=(String) session.getAttribute("aid") %>">
            <input type="hidden" class="form-control" id="action" name="action" value="<%=(String) session.getAttribute("userRole")%>">
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
        <button type="submit" class="btn btn-primary">Change Password</button>
        <button type="reset" class="btn btn-secondary btn-cancel">Clear</button>
      </div>
        
    </form>
    <div class="message-box">
                <span class="message ${success ? 'success' : 'error'}">${message}</span>

        </div>
   
    </div>
    
  <!-- Bootstrap JS Link (Replace with the appropriate version) -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
 