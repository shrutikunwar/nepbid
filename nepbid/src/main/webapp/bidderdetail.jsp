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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
 <nav id="top-navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">NEP-BID</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <!-- Top Navigation Items -->
        
        <li class="nav-item">
          <a class="nav-link" href="?action=default">Home</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="Admin?action=productDetails">Products </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Admin?action=sellerdetails">Sellers</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#">Update password</a>
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
         		<th scope="col">BidderId</th>
         		<th scope="col">Name</th>
         		<th scope="col">Email</th>
         		<th scope="col">Contact</th>
            </tr>
        </thead>
         
             
        <tbody>
               <c:forEach var="Bidder" items="${Bidders}">
                  <tr>
            		<td scope="col"><c:out value="${Bidder.bidderid}"/></td>
            		<td scope="col"><c:out value="${Bidder.name}"/></td>
            		<td scope="col"><c:out value="${Bidder.email}"/></td>
            		<td scope="col"><c:out value="${Bidder.contact}"/></td>
            
       			 </tr>
   			 </c:forEach>
	</tbody>

</table>





<footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-12 col-md mr-5" >

      </div>
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