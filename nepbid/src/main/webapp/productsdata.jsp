<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="DataInfoImpl.Datainfo,java.util.List"%>
<%@page import="com.biddingsystem.model.Bid"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>



<head>

    <!-- <link rel="stylesheet" href="assets/styles/see.css"> -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Product Details</title>

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

            background: #ffffff;

            position: center;

            align-content: space-between;

        }



        footer {



            background: #9accef;



            color: black;



            width: 100%;



            padding: 10px 10px 10px 10px;



        }







        footer .content {



            max-width: 1250px;



            margin: auto;



            padding: 10px 10px 10px 10px;



        }







        footer .content .top {



            display: flex;



            align-items: center;



            justify-content: space-between;



            margin-bottom: 10px;



        }







        footer .content .top .logo-details {



            font-size: 24px;



        }







        footer .content .top .logo-details .logo_name {



            margin-right: 5px;



        }







        .content .top .company {



            font-size: 24px;



        }







        footer .content .link-boxes {



            width: 100%;



            display: flex;



            justify-content: space-between;



        }







        footer .content .link-boxes .box {



            width: calc(100% / 5 - 10px);



        }







        .content .link-boxes .box .link_name {



            font-size: 18px;



            font-weight: 400;



            margin-bottom: 10px;



            position: relative;



        }







        .footer .content .link-boxes .box li {



            margin: 6px 0;



            list-style: none;



        }







        .footer .content .link-boxes .box li a {



            font-size: 14px;



            font-weight: 400;



            text-decoration: none;



            opacity: 0.8;



            transition: all 0.4s ease;



        }







        .footer .content .link-boxes .box li a:hover {



            opacity: 1;



            text-decoration: underline;



        }







        footer .bottom-details {



            width: 100%;



            background: #9accef;



        }







        footer .bottom-details .bottom_text {



            max-width: 1250px;



            margin: auto;



            padding: 10px 20px;



            display: flex;



            justify-content: space-between;



        }



        .container {

            display: flex;

            justify-content: center;

            align-items: center;

        }



        .product-container {

            display: flex;

            gap: 20px;

            align-items: center;

        }



        .product-image img {

            max-width: 200px;

            max-height: 200px;

        }

    </style>

</head>



<body>
<%
Datainfo datainfo = new Datainfo();
List<Bid> list = datainfo.getAllBidsStatus();
%>

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
          <a class="nav-link" href="ProductAllotment.jsp">Product allot</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="NewProduct.jsp">Add New Product</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="home.jsp">Log Out </a>
         </li>
      </ul>
    </div>
  </nav>

    <div class="container">

        <div class="product-container">

            <table class="table table-bordered table-striped text-center">

                <thead>

                    <tr>

                        <th scope="col">Product ID</th>

                        <th scope="col">Bidder ID</th>

                        <th scope="col">Seller ID</th>

                        <th scope="col">Status</th>

                        <th scope="col">Bid Amount </th>
                       
                    </tr>
                </thead>
                <tbody>
                
                  <%
                            
                              for(Bid p : list)
                              {
                   %>
                        <tr>

                            <td scope="col">

                                <%=p.getPid()%>

                            </td>

                            <td scope="col">

                                <%=p.getBid() %>

                            </td>

                            <td scope="col">

                               <%=p.getSid() %>

                            </td>

                            <td scope="col">

                                <%=p.getStatus() %>

                            </td>

                            <td scope="col">

                               <%=p.getBidamount() %>

                            </td>
                             


                          <%
                              }
                          %>


                        </tr>
                        


                </tbody>





            </table>

        </div>

    </div>



    <footer>



        <div class="content">



            <div class="top">



                <div class="logo-details">



                    <i class="fab fa-slack"></i>



                    <span class="logo_name">NEP-BID</span>



                </div>



            </div>



            <div class="link-boxes">



                <ul class="box">



                    <a class="link_name">Company</a>



                    <li><a href="#">Home</a></li>



                    <li><a href="#">Contact us</a></li>



                    <li><a href="#">About us</a></li>



                    <li><a href="#">Get started</a></li>



                </ul>



                <ul class="box">



                    <a class="link_name">Services</a>



                    <li><a href="#">Buying</a></li>



                    <li><a href="#">Selling</a></li>



                    <li><a href="#">Payment</a></li>



                </ul>



                <ul class="box">



                    <a class="link_name">Account</a>



                    <li><a href="#">Profile</a></li>



                    <li><a href="#">My account</a></li>



                    <li><a href="#">Preferences</a></li>



                    <li><a href="#">Purchase</a></li>



                </ul>



            </div>



        </div>



        <div class="bottom-details">



            <div class="bottom_text">



                <span class="copyright_text">Copyright © 2023



                    <a href="#000000">NEP-BID</a> All rights reserved



                </span>



                <span class="policy_terms">



                    <a href="#000000">Privacy policy</a>



                    <a href="#000000">Terms & conditions</a>



                </span>



            </div>



        </div>



    </footer>

</body>



</html>