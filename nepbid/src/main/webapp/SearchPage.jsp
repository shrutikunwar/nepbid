<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="DataInfoImpl.Datainfo"%>
<%@page import="java.util.List"%>
<%@page errorPage="ErrorPage.jsp" %>
<%@page import="com.biddingsystem.model.Products" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Page</title>

    <style>
    
    .nosearchdiv {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f5f5f5;
}

.no-data-container {
    background-color: #ffffff;
    border: 1px solid #ccc;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .search-container {
            background-color: #f1f1f1;
            padding: 20px;
            text-align: center;
        }
        
        .search-container input[type="text"],
        .search-container button {
            padding: 10px;
            width: 150px;
            /* Set a specific width for both input and button */
        }
        
        .results-container {
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
        }
        
        .result-item {
            width: 100px;
            height: 100px;
            background-color: #e0e0e0;
            display: flex;
            flex: 1;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }
    </style>
    
    
</head>

<body>
    <div class="search-container">
        <form action="Search" method="Get">
        <input type="text" id="searchInput" name="search" placeholder="<%=request.getParameter("search") %>">
        <input type="hidden" name="action" value="homeproducts">
        <button type="submit">Search</button>
        </form>
    </div>


<%
String searchQuery = request.getParameter("search");
List<Products> productsList = Datainfo.searchProductshome(searchQuery);

if(productsList != null && !productsList.isEmpty()) {
    for(Products product : productsList) {
%>
        <div class="results-container">
            <img alt="<%= product.getProductname() %>" src="">
            <div class="result-item">
                <p><%= product.getProductname() %></p>
                <p><%= product.getProductdescription() %></p>
                <p><%= product.getStarting_bp() %></p>
            </div>
        </div>
<%
    }
} else {
%>
    <div class="nosearchdiv">
        <div class="no-data-container">
            No Data Found
        </div>
    </div>
<% 
}
%>

</body>

</html>