<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
  <title>Khalti Payment Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-top: 100px;
    }

    h1 {
      text-align: center;
    }

    .input-group {
      margin-bottom: 15px;
    }

    .input-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .input-group input {
      width: 100%;
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
    }

    .input-group input[type="submit"] {
      background-color: purple;
      color: white;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
    }

    .input-group input[type="submit"]:hover {
      background-color: purple;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Pay with Khalti</h1>
    <form id="payment-form">
      <div class="input-group">
        <label for="name">User ID</label>
        <input type="text" id="name"User Id="name" required>
      </div>
      <div class="input-group">
        <label for="ID">Pin</label>
        <input type="ID" id="Password" name="Pin" required>
      </div>
      <!--
      <div class="input-group">
        <label for="amount">Amount</label>
        <input type="number" id="amount" name="amount" required>
      </div>
    -->
      <div class="input-group">
        <input type="submit" value="Pay Now">
      </div>
    </form>
  </div>
</body>
</html>