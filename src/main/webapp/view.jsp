<%@page import="DataInfoImpl.Datainfo, com.biddingsystem.model.Products, java.util.List"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page errorPage="ErrorPage.jsp" %>
<%@ page session="true" %>



<%
    String userRole = (String) session.getAttribute("userRole");
    if (userRole == null || !userRole.equals("bidder")) {
        response.sendRedirect("ErrorPage.jsp"); // Redirect to error page if not logged in as a bidder
    } else {
        // User is logged in as a bidder, proceed with displaying the page content
        int id = Integer.parseInt(request.getParameter("id"));
        Datainfo datainfo = new Datainfo();
        Products p = datainfo.getAllProductsDetails(id);
    }
%>


<!DOCTYPE html>
<html>
<head>


<script>
        window.onload = function() {
            // Check session using AJAX
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'SessionCheckServlet', true);
            xhr.onload = function() {
                if (xhr.status === 200) {
                    var response = xhr.responseText;
                    if (response === 'invalid') {
                        // Redirect to error page if session is invalid
                        window.location.href = 'ErrorPage.jsp';
                    }
                }
            };
            xhr.send();
        };
    </script>
    
    
    <title>Product Information</title>
    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/styles/see.css">
    <link rel="stylesheet" href="assets/styles/base.css">
    
    <style>
    
    .product-container{
    display:flex;
    flex-direction:row;
    justify-content:space-around;
    flex-wrap:wrap;
    }

    html,
            body {

                height: 100vh;
                width: 100%;
                place-items: left;
                background: view.jspe9ecef;
            }

        table {
            border-collapse: collapse;
            border: 2px solid black;
            margin: auto; /* Center the table on the page */
        }
        th, td {
            border: 2px solid black;
            padding: 15px;
        }
        .field-column {
            width: 150px;
        }
        .value-column {
            width: 300px;
        }
        .product-details {
            text-align: center;
            background-color: lightgray;
        }
        .modal-body{
            text-align-last: center;
            position: relative;
             margin: 40;
         }
		hr{
			margin:7px;}

    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-black">

            <h1 style="color: blue; font-size: 26px;">NEP-BID</h1>


            <div class="topnav">
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="home.jsp">Home</a>
                <a href="About.jsp">About Us</a>
                <a href="Team.jsp">Team</a>
                <a href="contactus.jsp">Contact Us </a>



            </div>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <%
                   String user =(String) session.getAttribute("userRole");
                    if("bidder".equals(user)){
                    	Datainfo d = new Datainfo();
                    	String name = (String) session.getAttribute("aid");

                    %>
                    <a class="nav-link" href="CustomerPanel.jsp"><%=d.biddername(Integer.parseInt(name)) %></a>
                        
                        
                       <%
                    } else{
                       %>
                       
                        <%
   							 String id = (String) session.getAttribute("aid");
   							 Datainfo d = new Datainfo();
    						
    					%>
    					<a class="nav-link" href="UserLogin.jsp">Login</a>
                       
                       <%
                    }
                       %>
                    </li>
                </ul>
            </div>


        </nav>
                    <%
					int id = Integer.parseInt(request.getParameter("id"));
            		Datainfo datainfo = new Datainfo();
                    Products p = datainfo.getAllProductsDetails(id);
					%>
    

    
    <h1 style="color:navy blue; font-size: 26px; margin-bottom:40px; text-align:center;">Product Information Table </h1>
    
 
    <div class="container">
        <div class="product-container">
          <div class="product-image">
            <img src="<%=p.getImage() %>" alt="Product Image" width=300px; height=300px;>
          </div>
          <div class="productdata">
          <table>
              <tr>
                  <th class="product-details" colspan="2">Product Details</th>
              </tr>
              <tr>
                  <td>Product ID</td>
                  <td contenteditable="false"><%=p.getProductid() %></td>
              </tr>
              <tr>
                  <td>Product Name</td>
                  <td contenteditable="false"><%=p.getProductname() %></td>
              </tr>
              <tr>
                  <td>Product Category</td>
                  <td contenteditable="false"><%=p.getProductcategory() %></td>
              </tr>
              <tr>
                  <td>Product Description</td>
                  <td contenteditable="false"><%=p.getProductdescription() %></td>
              </tr>
              <tr>
                  <td>Current Bid Price</td>
                  <td contenteditable="false"><%=p.getStarting_bp() %></td>
              </tr>
              <!-- Additional rows can be added here -->
          </table>
          
          <div class="modal-body" style="padding-top:10px;">
           
           
           <form id="bid-form" action="bidp" method="post">
      
          <div class="form-group">
                  <input type="hidden" id="bidid" name="bidderid" value=<%=(String) session.getAttribute("aid") %>>
                  <label for="bid-amount">Bid Amount:</label>
                  <input type="number" id="bidamount" name="bidamount" required>
                  <input type="hidden" id="pid" name="pid" value="<%=p.getProductid()%>">
                  <small id="bid-error" class="text-danger" style="display: none;">Please enter a bid amount greater than current price </small>
                  
         </div>
          <br>
            <button type="submit" class="btn btn-primary mt-1">Submit Bid</button>
        </form>
      
      <script>
      document.getElementById("bid-form").addEventListener("submit", function(event) {
          var bidAmount = document.getElementById("bid-amount").value;
          if (bidAmount < currentprice ) {
              event.preventDefault();
              document.getElementById("bid-error").style.display = "block";
          } else {
              document.getElementById("bid-error").style.display = "none";
          }
      });
      </script>
      
      </div>
          </div>
          </div>
          
          </div>

         
          
      </body>
      </html>
  