<%@page import="DataInfoImpl.Datainfo,com.biddingsystem.model.Transaction,java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Seller Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<%
Datainfo datainfo = new Datainfo();

List<Transaction> transaction =  datainfo.getAllTransactions();

%>


    <table class="table table-bordered table-striped text-center">
        <thead>
         <tr>
         <th scope="col">Seller Id</th>
         <th scope="col">Name</th>
         <th scope="col">Contact</th>
         <th scope="col">Address</th>
         <th scope="col">Email</th>
            </tr>
            </thead>
         
             
        <tbody>
        <%
   			for( Transaction t : transaction){
   				%>
   				<tr>
   				<td scope="col"><%=t.getSellerid() %></td>
   				<td scope="col"><%=t.getSname() %></td>
   				<td scope="col"><%=t.getScontact() %></td>
   				<td scope="col"><%=t.getSaddress() %></td>
   				<td scope="col"><%=t.getSemail() %></td>
   				</tr>
   				<% 
   				}
   			%>
</tbody>


    </table>

</body>
</html>
