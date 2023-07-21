<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	
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

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'Poppins',sans-serif;
}
html, body{
display: grid;
height: 100vh;
width: 100%;
place-items: left;
background: #CBC3E3;
}
::selection{
background: #ff80bf;
}
.container{
background: #fff;
max-width: 350px;
width: 100%;
padding: 25px 30px;
border-radius: 5px;
box-shadow: 0 10px 10px rgba(0, 0, 0, 0.15);
}
.container form .title{
font-size: 30px;
font-weight: 600;
margin: 20px 0 10px 0;
position: relative;
}
.container form .title:before{
content: '';
position: absolute;
height: 4px;
width: 33px;
left: 0px;
bottom: 3px;
border-radius: 5px;
background: linear-gradient(to right, #99004d 0%, #ff0080 100%);
}
.container form .input-box{
width: 100%;
height: 45px;
margin-top: 25px;
position: relative;
}
.container form .input-box input{
width: 100%;
height: 100%;
outline: none;
font-size: 16px;
border: none;
}
.container form .underline::before{
content: '';
position: absolute;
height: 2px;
width: 100%;
background: #ccc;
left: 0;
bottom: 0;
}
.container form .underline::after{
content: '';
position: absolute;
height: 2px;
width: 100%;
background: linear-gradient(to right, #e6e1e3 0%, #ff0080 100%);
left: 0;
bottom: 0;
transform: scaleX(0);
transform-origin: left;
transition: all 0.3s ease;
}
.container form .input-box input:focus ~ .underline::after,
.container form .input-box input:valid ~ .underline::after{
transform: scaleX(1);
transform-origin: left;
}
.container form .button{
margin: 40px 0 20px 0;
}
.container .input-box input[type="submit"]{
background: linear-gradient(to right, #e6e1e3 0%, #ff0080 100%);
font-size: 17px;
color: #fff;
border-radius: 5px;
cursor: pointer;
transition: all 0.3s ease;
}
.container .input-box input[type="submit"]:hover{
letter-spacing: 1px;
background: linear-gradient(to left, #e6e1e3 0%, #ff0080 100%);
}
.container .option{
font-size: 14px;
text-align: center;
}
.container .facebook a,
.container .twitter a{
display: block;
height: 45px;
width: 100%;
font-size: 15px;
text-decoration: none;
padding-left: 20px;
line-height: 45px;
color: #fff;
border-radius: 5px;
transition: all 0.3s ease;
}
.container .facebook i,
.container .twitter i{
padding-right: 12px;
font-size: 20px;
}
.container .google a{
background: linear-gradient(to right, #00acee 0%, #1abeff 100%);
margin: 20px 0 15px 0;
}
.container .google a:hover{
background: linear-gradient(to left, #00acee 0%, #1abeff 100%);
margin: 20px 0 15px 0;
}
.container .facebook a{
background: linear-gradient( to right, #3b5998 0%, #476bb8 100%);
margin: 20px 0 50px 0;
}
.container .facebook a:hover{
background: linear-gradient( to left, #3b5998 0%, #476bb8 100%);
margin: 20px 0 50px 0;
}
</style>


<!-- Custom styles for this template -->
<link href="./Pricing example · Bootstrap_files/pricing.css" rel="stylesheet">
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
	
<p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;" ><b>NepBid</b></p>
<nav class="my-2 my-md-0 mr-md-3">
	<a class="p-2 text-dark" href="home.jsp">Home</a>
	<a class="p-2 text-dark" href="product.jsp">Products</a>
<a class="p-2 text-dark" href="About.jsp">About Us</a>
<a class="p-2 text-dark" href="Help.jsp">Help</a>
<a class="p-2 text-dark" href="Feedback.jsp">Feedback</a>
</nav>
<a class="btn btn-outline-primary mr-3" href="Adminlogin.jsp">Admin Login</a>
<a class="btn btn-outline-primary" href="SellerLogin.jsp">Seller Login</a>
</div>

  <div class="container">
  
  
		<form action="RegBid" method="post">
		   <div class="title">Sign Up as Bidder </div>
				<div class="input-box underline">
					<input type="text" name="name" placeholder="Enter Your Name" required>
				<div class="underline"></div>
		</div>
		
		    <div class="input-box underline">
				<input type="email" name="email" placeholder="Enter Your Email" required>
		        <div class="underline"></div>
			</div>


     		<div class="input-box underline">
					<input type="text" name="contact" placeholder="Enter Your Contact" required>
					<div class="underline"></div>
			</div>
			
			
			<div class="input-box">
						<input type="password" name="password" placeholder="Enter Your Password" required>
						<div class="underline"></div>
			</div>
			
			
			<div class="input-box button">
				<input type="submit" name="" value="Continue">
			</div>
	
	</form>



</div>
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