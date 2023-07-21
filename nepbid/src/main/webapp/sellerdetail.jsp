<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Seller Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
 <nav id="top-navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">NEP-BID</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <!-- Top Navigation Items -->
       
        <li class="nav-item">
          <a class="nav-link" href="Admin?action=default">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Admin?action=productDetails">Products</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="Admin?action=bidderdetails">Bidders</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="home.jsp">Logout</a>
          </li>
      </ul>
    </div>
  </nav>


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
   <c:forEach var="transaction" items="${transactions}">
        <tr>
            <td scope="col"><c:out value="${transaction.sellerid}"/></td>
            <td scope="col"><c:out value="${transaction.sname}"/></td>
            <td scope="col"><c:out value="${transaction.scontact}"/></td>
            <td scope="col"><c:out value="${transaction.saddress}"/></td>
            <td scope="col"><c:out value="${transaction.semail}"/></td>
        </tr>
    </c:forEach>
</tbody>


    </table>

    <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
            <div class="col-12 col-md mr-5"></div>
            <div class="col-6 col-md">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Cool stuff</a></li>
                    <li><a class="text-muted" href="#">Random feature</a></li>
                    <li><a class="text-muted" href="#">Team feature</a></li>
                    <li><a class="text-muted" href="#">Stuff for developers</a></li>
                    <li><a class="text-muted" href="#">Another one</a></li>
                    <li><a class="text-muted" href="#">Last time</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Resource</a></li>
                    <li><a class="text-muted" href="#">Resource name</a></li>
                    <li><a class="text-muted" href="#">Another resource</a></li>
                    <li><a class="text-muted" href="#">Final resource</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>About</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Team</a></li>
                    <li><a class="text-muted" href="#">Locations</a></li>
                    <li><a class="text-muted" href="#">Privacy</a></li>
                    <li><a class="text-muted" href="#">Terms</a></li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>
