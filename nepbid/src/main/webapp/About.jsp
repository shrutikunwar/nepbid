<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="DataInfoImpl.Datainfo,com.biddingsystem.model.Products,java.util.List"%>


<!DOCTYPE html>
<html>

<head>
  <title>About US</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/styles/aboutus.css">
</head>


<style>

p{
padding:10px;

}
  .team-member-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 10px;
        }
        
        .team-member {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            transition: all 0.3s ease;
            width: 45%;
            /* Set the width to allow two items in a row with some spacing */
        }
        
        .team-member:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }
        
        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-right: 20px;
        }
        
        
        
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
    

</style>

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


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


  <div class="banner">
    <img src="assets/images/Untitled-1-01.png">
    <div class="banner-content">
      <h2>NEP-BID</h2>
      <p>"Unleash Your Competitive Spirit </p>
      <p>- Bid, Win, Repeat!"</p>
      <!-- <a href="#" class="btn">Learn More</a> -->
    </div>
  </div>

  <br>
  <br>

  <h3 style="color: black; font-size: 26px; padding: 0px 0px padding left:10px" align="center">About Us </h3>
  <br>
  <h4 style="color: navy blue; font-size: 26px; padding-left: 30px;" align="left">Welcome to NEP-BID </h4>

  <p> At our website, we have created a user-friendly and exciting platform for online bidding. Our aim is to provide
    an enjoyable and secure bidding experience for users who are looking to participate in various auctions and bid on
    their favorite items.</p>
  <p>Our online bidding system allows users to explore a wide range of auction categories, from electronics and fashion
    to collectible and more. You can browse through the available items, view detailed descriptions and images, and
    place your bids from the comfort of your own home.</p>

  <p>We take pride in ensuring a fair and transparent bidding process. All bids are recorded and displayed in real-time,
    allowing you to stay informed about the current bidding activity. Our system also includes automatic bid increments,
    ensuring that each bid is properly placed and that the auction progresses smoothly.</p>

  
  <h5 style="color: black; font-size: 16px; padding: 20px" align="left">To Participate </h5>
  
  <p> Simply create an account in our website and start bidding on your desired items. You'll have the opportunity to set your maximum bid, and our
  system will automatically increase your bid incrementally as needed to keep you in the lead.If you win the bid you
  will be notify by E-mail.
  Our dedicated customer support team is always ready to assist you with any questions or concerns you may have. We
    strive to provide excellent customer service and ensure your satisfaction throughout your bidding journey.</p>

<br>
<br>
  <h6 style="color: navy blue; font-size: 26px; padding: 0px 0px" align="center">Team Members</h6>
  <br>
  <br>
 
  
  <div class="team-member-container">
        <div class="team-member">
            <img src="team-member1.jpg" alt="Team Member 1">
            <div>
                <h2>John Doe</h2>
                <p>Position: Web Developer</p>
                <p>Email: john.doe@example.com</p>
            </div>
        </div>

        <div class="team-member">
            <img src="team-member2.jpg" alt="Team Member 2">
            <div>
                <h2>Jane Smith</h2>
                <p>Position: Graphic Designer</p>
                <p>Email: jane.smith@example.com</p>
            </div>
        </div>

        <!-- Add more team members as needed -->
        <div class="team-member">
            <img src="team-member2.jpg" alt="Team Member 3">
            <div>
                <h2>Jane Smith</h2>
                <p>Position: Graphic Designer</p>
                <p>Email: jane.smith@example.com</p>
            </div>
        </div>

        <div class="team-member">
            <img src="team-member2.jpg" alt="Team Member 4">
            <div>
                <h2>Jane Smith</h2>
                <p>Position: Graphic Designer</p>
                <p>Email: jane.smith@example.com</p>
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