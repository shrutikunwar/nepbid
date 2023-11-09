<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="DataInfoImpl.Datainfo,com.biddingsystem.model.Products,java.util.List"%>

<!DOCTYPE html>
<html>
<head>
  <title>Contact US</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="stylesheet" href="assets/styles/contactus.css">
    <link rel="stylesheet" href="assets/styles/see.css">

<style type="text/css">
    footer {

      background: #E3F2FD;

      color: black;

      width: 100%;

      padding: 10px 10px 10px 10px;

    }



    footer .content {

      max-width: 1250px;

      margin: auto;

      padding: 10px 10px 10px 10px;

    }



    footer .content .top {

      display: flex;

      align-items: center;

      justify-content: space-between;

      margin-bottom: 10px;
      /* Decrease the margin-bottom value */

    }



    footer .content .top .logo-details {

      font-size: 24px;

    }



    footer .content .top .logo-details .logo_name {

      margin-right: 5px;

    }



    .content .top .company {

      font-size: 24px;

    }



    footer .content .link-boxes {

      width: 100%;

      display: flex;

      justify-content: space-between;

    }



    footer .content .link-boxes .box {

      width: calc(100% / 5 - 10px);

    }



    .content .link-boxes .box .link_name {

      font-size: 18px;

      font-weight: 400;

      margin-bottom: 10px;

      position: relative;

    }



    .footer .content .link-boxes .box li {

      margin: 6px 0;

      list-style: none;

    }



    .footer .content .link-boxes .box li a {

      font-size: 14px;

      font-weight: 400;

      text-decoration: none;

      opacity: 0.8;

      transition: all 0.4s ease;

    }



    .footer .content .link-boxes .box li a:hover {

      opacity: 1;

      text-decoration: underline;

    }



    footer .bottom-details {

      width: 100%;

      background: white;

    }



    footer .bottom-details .bottom_text {

      max-width: 1250px;

      margin: auto;

      padding: 10px 20px;

      display: flex;

      justify-content: space-between;

    }
    
    
    
    .button button{
    margin : 5px;
    background:blue;
    color:white;
    padding: 7px;
    border-radius:15%;
    border:none;
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-black">
  
 <h1 style="color: blue; font-size: 26px;">NEP-BID</h1>


 <div class="topnav">
    <a class="active" href="#"></a>
     <a class="active" href="#"></a>
     <a class="active" href="#"></a>
    <a class="active" href="home.jsp">Home</a>
    <a href="About.jsp">About Us</a>
    <a href="contactus.jsp">Contact Us </a>
  

      
</div>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
                    <%
                   String user =(String) session.getAttribute("userRole");
                    if("bidder".equals(user)){
                    	Datainfo d = new Datainfo();
                    	String name = (String) session.getAttribute("aid");

                    %>
                    <a class="nav-link" href="CustomerPanel.jsp"><%=d.biddername(Integer.parseInt(name)) %></a>
                        
                        
                       <%
                    } else{
                       %>
                       
                        <%
   							 String id = (String) session.getAttribute("aid");
   							 Datainfo d = new Datainfo();
    						
    					%>
    					<a class="nav-link" href="UserLogin.jsp">Login</a>
                       
                       <%
                    }
                       %>
                    </li>
    </ul>
  </div>


</nav>

  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Baneshwor</div>
          <div class="text-two">Kathmandu,Nepal</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">9800000000</div>
          <div class="text-two">9810000000</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one"><a href="https://mail.google.com/mail/?view=cm&to=nepbid@gmail.com
          ">nepbid@gmail.com</a></div>
          
          <div class="text-two"><a href="https://mail.google.com/mail/?view=cm&to=dpm90797@gmail.com"
          >dpm90797@gmail.com</a></div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>If you have any types of quries , you can send me message from here.</p>
        
      <form action="SendMessage" method="POST">
        <div class="input-box">
          <input type="text" name="name" placeholder="Enter your name" required>
        </div>
        
        <div class="input-box message-box" style="word-wrap:break-word; width:770px;">
             <input type="text" name="message" placeholder="Enter some message" required>
        </div>
        <input type="hidden" name="id" value="<%=(String) session.getAttribute("aid") %>">
        <div class="button">
          <button type="submit" >Send Now</button>
          <button onclick="redirectToPage()">Sign Up</button>

     <script>
    function redirectToPage() {
        // Redirect to the desired page
        window.location.href = "home.jsp";
    }
   </script>
        </div>
       
      </form>
      
        <div class="message-box">
	<%  String s =(String) request.getAttribute("message"); 
	
		if(s != null){
	%>
                <span class="message "><%=s %></span>
                
                <%
		}
                %>
                
                
        </div>
        
        
      
    </div>
    </div>
  </div>
  <footer>
    <div class="bottom-details">
      <div class="bottom_text">
        <span class="copyright_text">Copyright © 2023  <a href="home.jsp">NEP-BID</a> All rights reserved</span>
        <span class="policy_terms">
          <a href="About.jsp">Privacy policy</a> |
          <a href="#">Terms And condition</a>
        </span>
      </div>
    </div>
  </footer>
  
</body>
</html>