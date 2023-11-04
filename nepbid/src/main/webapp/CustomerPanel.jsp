<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="DataInfoImpl.Datainfo"%>    

<%@page errorPage="ErrorPage.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/styles/admin.css">
    <link rel="stylesheet" type="text/css" href="./assets/styles/header.css">
    <title>Bidder Panel</title>
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
Datainfo d = new Datainfo();
String id = (String) session.getAttribute("aid");
String name = d.biddername(Integer.parseInt(id));

%>
    <div class="main-wrapper">
        <section class="side-section">
            <ul>
                <div class="profile">
                    <img src="./assets/images/logo.png"  width="150px" height="80px">
                </div>
                <h3><span><%=id %></span>-<strong><%=name %></strong></h3>

                <br>
                <li>
                    <a href="CustomerDashboard.jsp" target="content">
                        <img src="./assets/images/dashboard.png" > 
                        Dashboard
                    </a>
                </li>
                
                <hr>

                <br>
                <li>
                <a href="home.jsp" target="_Parent"><img src="./assets/images/Product.png">Home</a>
                   
                </li>
                <hr>


                <hr>

                <br>
                <li>
                     <a href="BidItems.jsp" target="content"><img src="./assets/images/Bid Items.png ">Bid Items </a> 
                </li>

                <hr>
                <br>
                <li>
                    <a href="UpdateAdmin.jsp" target="content"><img src="./assets/images/Product allotment.png "> Change Password </a>
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
            <iframe name="content" id="content-frame" src="CustomerDashboard.jsp" frameborder="0"></iframe>
        </section>
    </div>
</body>

</html>