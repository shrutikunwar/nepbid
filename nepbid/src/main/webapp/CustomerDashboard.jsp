<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page  import="java.util.List , DataInfoImpl.CustomerDashboard"%>
<!DOCTYPE>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
   
    <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.notification-section,
.product-bids-section {
    padding: 20px;
    margin: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
}

#bidsTable {
    width: 100%;
    border-collapse: collapse;
}

#bidsTable th, #bidsTable td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: left;
}
    
    
    </style>
</head>

<body>

<%
int id = Integer.parseInt((String) session.getAttribute("aid"));
CustomerDashboard cb = new CustomerDashboard();
String name = cb.lastallotedproduct(id);
List<String> s = cb.LastThreeProducts(id);

%>

    <div class="notification-section">
        <h2>Notifications</h2>
        <div id="notifications">
         <%
         if(name!=null){
         %>
         <p> Last alloted product is <%=name%></p>
         <%
         }
         else{
         %>
         <p>No product alloted till now</p>
         <%
         }
         %>
        </div>
    </div>
    
    <div class="product-bids-section">
        <h2>Last 3 Product Bids</h2>
        <%
        if(s !=null){
        	
        for(String str:s){
        	
        	if(str!=null)	
        		%>
        	<p><%=str%></p>
        <% 
        }
        }
        else{
        %>
        <p>No products to show</p>
        <%
        }
        %>
        
    </div>

    <script src="script.js"></script>
    
</body>

</html>
