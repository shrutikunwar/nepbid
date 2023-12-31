<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Payment Processing System</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                font-family: Arial, sans-serif;
            }
            
            .container {
                max-width: 600px;
                width: 90%;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f2f2f2;
            }
            
            h1 {
                text-align: center;
            }
            
            label {
                display: block;
                margin-bottom: 10px;
            }
            
            input[type="text"],
            input[type="password"],
            select {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            
            .payment-option {
                display: flex;
                align-items: center;
            }
            
            input[type="radio"] {
                margin-right: 5px;
            }
            
            input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            
            input[type="submit"]:hover {
                background-color: #45a049;
            }
            
            .message-box {
                text-align: center;
            }
            
            .message {
                display: inline-block;
                padding: 10px;
                margin-bottom: 10px;
                border-radius: 4px;
                font-weight: bold;
            }
            
            .success {
                background-color: #dff0d8;
                color: #3c763d;
            }
            
            .error {
                background-color: #f2dede;
                color: #a94442;
            }
        </style>
    </head>

    <body>

        <div class="container">
            <h1>Seller Account Registration</h1>
            <form action="transaction" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br><br>

                <label for="contact">Contact Number:</label>
                <input type="text" id="contact" name="contact" required><br><br>

                <label for="address">Address:</label>
                <select id="address" name="address">
                <option value="Kathmandu">Kathmandu</option>
                <option value="Pokhara">Pokhara</option>
                <option value="Chitwan">Chitwan</option>
                <option value="Biratnagar">Biratnagar</option>
            </select><br><br>

                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required><br><br>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required><br><br>

                <input type="submit" value="Apply for Seller Account">
            </form>



            <div class="message-box">
                <%  String s =(String) request.getAttribute("message"); 
            
                if(s != null){
            %>
                    <span class="message "><%=s %></span>

                    <%
                }
                        %>


            </div>

            <div class="backtologin">
                <a href="SellerLogin.jsp">Go Back To Seller Login</a>
            </div>
        </div>
    </body>

    </html>