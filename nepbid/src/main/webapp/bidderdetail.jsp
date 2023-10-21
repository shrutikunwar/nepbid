<%@page import="com.biddingsystem.model.Bidder"%>
<%@page import="java.util.List"%>
<%@page import="DataInfoImpl.Datainfo"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bidder details</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

 <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>


<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
</head>


<body>

<%
Datainfo datainfo = new Datainfo();
List<Bidder> bidder = datainfo.getAllBidders();
%>

<%
String name = (String) session.getAttribute("AdminName");

%>

 <table class="table table-bordered table-striped text-center">
        <thead>
         	<tr>
         		<th scope="col">BidderId</th>
         		<th scope="col">Name</th>
         		<th scope="col">Email</th>
         		<th scope="col">Contact</th>
            </tr>
        </thead>
         
             
        <tbody>
               
   			 <%
   			for(Bidder b : bidder){
   				%>
   				<tr>
   				<td scope="col"><%=b.getBidderid() %></td>
   				<td scope="col"><%=b.getName() %></td>
   				<td scope="col"><%=b.getEmail() %></td>
   				<td scope="col"><%=b.getContact() %></td>
   				</tr>
   				<% 
   				}
   			%>
	</tbody>

</table>

</body>
</html>