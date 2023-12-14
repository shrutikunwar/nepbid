<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/styles/Admin.css">
    <link rel="stylesheet" type="text/css" href="./assets/styles/header.css">
    <title>Admin Dashboard</title>
</head>


<body>

    <div class="head">
        <header class="header">
            <div class="left-section">
                <h5 style="color:2E3192; font-size: 24px;">Nep-Bid</h5>

            </div>
        </header>
    </div>
    
    <% 
    String s =(String) session.getAttribute("aid");
    %>

    <div class="main-wrapper">
        <section class="side-section">
            <ul>
                <div class="profile">
                    <img src="./assets/images/logo.png" width="150px" height="80px">
                </div>
                <h3><span><%=s.toUpperCase() %></span></h3>

                <br>
                <li>
                    <a href="Admindashboard.jsp" target="content">
                        <img src="./assets/images/dashboard.png"> Dashboard
                    </a>
                </li>

                <hr>

                <br>
                <li>
                    <a href="bidderdetail.jsp" target="content"><img src="./assets/images/Bidder.png">Bidder Details</a>
                </li>
                <hr>

                <br>
                <li>
                    <a href="sellerdetail.jsp" target="content"><img src="./assets/images/Seller.png">Seller Details </a>
                </li>
                <hr>

                <br>
                <li>
                    <a href="ProductDetails.jsp" target="content"><img src="./assets/images/Product.png">Products</a>
                </li>
                <hr>

                <br>
                <li>
                    <a href="NewProduct.jsp" target="content"><img src="./assets/images/Product.png">Add Product</a>
                </li>
                <hr>


                <br>
                <li>
                    <a href="UpdateAdmin.jsp" target="content"><img src="./assets/images/Password.png">Password update</a>
                </li>
                
                 <hr>
                <br>
                
                <li>
                  <a href="Messages.jsp" target="content"><img src="./assets/images/Password.png">See Messages</a>
                </li>
                <hr>
                <br>
                
                 <li>
                    <div class="logout">
                        <form action="logout" method="post">
                            <img src="./assets/images/logoutB.png" alt="logoff">
                            <button type="submit" class="clogout">Logout</button>
                        </form>
                    </div>
                </li>
            </ul>
        </section>
        <section class="content-section">
            <iframe name="content" id="content-frame" src="Admindashboard.jsp" frameborder="0"></iframe>
        </section>
    </div>
</body>

</html>