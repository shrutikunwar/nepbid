<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>User Login</title>
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
				integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
				crossorigin="anonymous">


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
					height: 100%;
					margin: 0;
					width: 100%;
					place-items: left;
					background: #CBC3E3;
				}

				body {
					display: flex;
					flex-direction: column;
				}


				::selection {
					background: #ff80bf;
				}


				.container {
					background: #fff;
					max-width: 350px;
					width: 100%;
					padding: 25px 30px;
					border-radius: 5px;
					box-shadow: 0 10px 10px rgba(0, 0, 0, 0.15);
				}


				.container form .title {
					font-size: 30px;
					font-weight: 600;
					margin: 20px 0 10px 0;
					position: relative;
				}


				.container form .title:before {
					content: '';
					position: absolute;
					height: 4px;
					width: 33px;
					left: 0px;
					bottom: 3px;
					border-radius: 5px;
					background: linear-gradient(to right, #99004d 0%, #ff0080 100%);
				}


				.container form .input-box {
					width: 100%;
					height: 45px;
					margin-top: 25px;
					position: relative;
				}

				.container form .input-box input {
					width: 100%;
					height: 100%;
					outline: none;
					font-size: 16px;
					border: none;
				}


				.container form .underline::before {
					content: '';
					position: absolute;
					height: 2px;
					width: 100%;
					background: #ccc;
					left: 0;
					bottom: 0;
				}

				.container form .underline::after {
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


				.container form .input-box input:focus~.underline::after,
				.container form .input-box input:valid~.underline::after {
					transform: scaleX(1);
					transform-origin: left;
				}



				.container form .button {
					margin: 40px 0 20px 0;
				}



				.container .input-box input[type="submit"] {
					background: linear-gradient(to right, #e6e1e3 0%, #ff0080 100%);
					font-size: 17px;
					color: #fff;
					border-radius: 5px;
					cursor: pointer;
					transition: all 0.3s ease;
				}



				.container .input-box input[type="submit"]:hover {
					letter-spacing: 1px;
					background: linear-gradient(to left, #e6e1e3 0%, #ff0080 100%);
				}


				.container .option {
					font-size: 14px;
					text-align: center;
				}
			</style>

			<link href="./Pricing example � Bootstrap_files/pricing.css" rel="stylesheet">
		</head>


		<body>
			<div
				class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">

				<p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>NepBid</b></p>
				<nav class="my-2 my-md-0 mr-md-3">
					<a class="p-2 text-dark" href="home.jsp">Home</a>
					<a class="p-2 text-dark" href="product.jsp">Products</a>
					<a class="p-2 text-dark" href="About.jsp">About Us</a>

				</nav>
				<a class="btn btn-outline-primary mr-3" href="Adminlogin.jsp">Admin Login</a>
				<a class="btn btn-outline-primary mr-3" href="SellerLogin.jsp">Seller Login</a>
			</div>

			<div class="container">


				<form action="bidder" method="post">
					<div class="title">User Login </div>
					<div class="input-box underline">
						<input type="email" name="email" placeholder="Enter Your email" required>
						<div class="underline"></div>
					</div>

					<div class="input-box">
						<input type="password" name="password" placeholder="Enter Your Password" required>
						<div class="underline"></div>
					</div>

					<div class="input-box button">
						<input type="submit">
					</div>

					<a href="BidderRegistration.jsp">Or, register as a bidder</a>
				</form>
			</div>

			<div class="message-box">
				<c:if test="${not empty message}">
					<span class="message ${success ? 'success' : 'error'}">${message}</span>
				</c:if>
			</div>
		</body>

		</html>