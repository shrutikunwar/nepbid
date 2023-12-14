<%@page import="DataInfoImpl.Datainfo"%>
<%@page import="java.util.List"%>
<%@page errorPage="ErrorPage.jsp" %>
<%@page import="com.biddingsystem.model.Products" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html>
        <html>

        <head>
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
                    background: #CBC3E3;
                    position: center;
                    align-content: space-between;
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
        List<Products> product = null;
        String role = (String) session.getAttribute("userRole");
        		
        if(role.equals("seller"))
        {
        	String s = (String) session.getAttribute("aid");
        	product = datainfo.getAllSellerProducts(Long.parseLong(s));
        }
        else{
        	product = datainfo.getAllProducts();
        }
        %>
        
        <%
         String name = (String) session.getAttribute("AdminName");

%>
       

            <div class="container">
                <div class="product-container" >
                    <table class="table table-bordered table-striped text-center">
                        <thead>
                            <tr>
                                <th scope="col">Product Id</th>
                                <th scope="col">Product Image</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Product category</th>
                                <th scope="col">starting_bp</th>
                                <th scope="col">Description</th>

                            </tr>
                        </thead>

                        <tbody>
                           <%
                           for(Products p : product){
                        	 %>  
                        	<tr>
                        	<td scope="col"><%= p.getProductid()%></td>
                        	<td scope="col"><img alt="<%=p.getImage() %>" src="<%=p.getImage() %>" alt="" width="200" height="200"></td>
                        	<td scope="col"><%=p.getProductname()%></td>
                        	<td scope="col"><%=p.getProductcategory() %></td>
                        	<td scope="col"><%=p. getStarting_bp()%></td>
                        	<td scope="col"><%=p.getProductdescription()%>  </td>
                        	
                        	
                        	</tr>
                        	
                        	<% 
                           }
                           %>
                        </tbody>


                    </table>
                    
                </div>
            </div>

        </body>

        </html>