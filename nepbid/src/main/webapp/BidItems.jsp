<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="DataInfoImpl.Datainfo"%>
 <%@page import="com.biddingsystem.model.Bid, java.util.List"%>
 <%@page errorPage="ErrorPage.jsp" %>
 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Alloted</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        .search-container {
        margin-top:30px;
            margin-bottom: 20px;
        }
        
        .search-container label {
            margin-right: 10px;
        }
        
        .search-container input[type="text"] {
            padding: 5px;
        }
        
        .search-container button {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        
        .search-container button:hover {
            background-color: #45a049;
        }
        
        .table-container {
            width: 80%;
            /* Set the desired width for the table container */
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th,
        td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>

   <div class="search-container">
        <form action="Search" method="post">
            <label for="search">Search:</label>
            <input type="text" id="search" name="searchTerm">
            <button type="submit">Submit</button>
        </form>
    </div>
    
    
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>S.N</th>
                    <th>Product name</th>
                    <th>Product id</th>
                    <th>Seller id</th>
                    <th>Bid amount</th>
                    <th>Status</th>
                    <th>Payment</th>
                </tr>
            </thead>
            <tbody>

               <%
               Datainfo d = new Datainfo();
               String id = (String) session.getAttribute("aid");
               List<Bid> b = (List<Bid>) request.getAttribute("bids");
               
               if(b==null || b.isEmpty() ){
                  b = d.getAllBidsStatus(Integer.parseInt(id));
               }
               int i=0;
               for(Bid bd : b){
            	   i++;
            	   
               %>
               <tr>
               <td><%=i %></td>
               <td><%=bd.getProductname() %></td>
               <td><%=bd.getPid() %></td>
               <td><%=bd.getSid() %></td>
               <td><%=bd.getBidamount() %></td>
               <td><%=bd.getStatus() %></td>
               <%
               if("alloted".equals(bd.getStatus())){
               %>
               <td><a href="paytem.jsp">Pay to receive</a></td>
               <%
               }
               else{
               %>
               <td>------</td>
               
               <%
               }
               %>
               </tr>
               
               <%
               }
               %>
            </tbody>
        </table>
    </div>
</body>

</html>