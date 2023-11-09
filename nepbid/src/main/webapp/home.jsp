<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="DataInfoImpl.Datainfo,com.biddingsystem.model.Products,java.util.List"%>

    <!DOCTYPE html>
    <html>

    <head>
        <title>Online Bidding System</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/styles/see.css">
        <link rel="stylesheet" href="assets/styles/base.css">


        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            
            html,
            body {
                display: grid;
                height: 100vh;
                width: 100%;
                place-items: left;
                background: view.jspe9ecef;
            }
            
            footer {
                background-color: view.jspf2f2f2;
                padding: 20px;
                margin-top: auto;
                /* Pushes the footer to the bottom */
                background: view.jspE3F2FD;
            }
            
            .contact-details {
                display: flex;
                justify-content: space-between;
                margin-bottom: 20px;
            }
            
            .contact-details ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
            }
            
            .contact-details ul li {
                margin-bottom: 5px;
            }
            
            .bottom-details {
                text-align: center;
                width: 100%;
                background: view.jspCBC3E3;
            }
            
            .bottom_text {
                margin-top: 10px;
            }
            
            .bottom_text a {
                color: view.jsp333;
                text-decoration: none;
                margin-left: 0px;
            }
            
            footer .bottom-details .bottom_text {
                max-width: 1250px;
                margin: auto;
                padding: 10px 20px;
            }
            
            a {
                padding: 0px;
            }
            
            hr {
                margin: 7px;
            }
            
            .products{
            max-width: 1200px;
                               
                                display: flex;
                                flex-wrap: wrap;
    		justify-content: space-between;
            }
            
            
            
            
            
 .emailSubscription {
    display:flex;  

}

#emailInput {
    width: 150px; 
    margin-right:10px;
    padding: 10px; 
    border: 1px solid #ccc; 
    border-radius: 5px; 
    height:50px;
    }

#subscribeButton {
    width: 80px; 
    padding: 10px; 
    background-color: #4caf50; 
    color: white;
    border: none;
    border-radius: 5px; 
    cursor: pointer; 
    height:50px;
}

#subscribeButton:hover {
    background-color: #45a049; 
}

#subscribeMessage { 
    font-weight: bold;
}

            
            
        </style>
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-black">

            <h1 style="color: blue; font-size: 26px;">NEP-BID</h1>


            <div class="topnav">
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="view.jsp"></a>
                <a class="active" href="home.jsp">Home</a>
                <a href="About.jsp">About Us</a>
                <a href="contactus.jsp">Contact Us </a>



            </div>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    
                        <form class="form-inline" action="Search" method="get" >
                            <input class="form-control mr-sm-2" type="search" placeholder="Search Items" name="search" id="search">
                            <button type="submit" class="btn btn-outline-primary my-2 my-sm-0" >Search</button>
                        </form>
                        
                    </li>
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



        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 sidebar">
                    <ul class="list-group">

                        <h1 style="color: navy blue; font-size: 24px; text-align:center;">Categories</h1>

                        <a href="Shoes.jsp" class="list-group-item">Shoes</a>
                        <hr>

                        <a href="Bags.jsp" class="list-group-item">Bags</a>
                        <hr>

                        <a href="Antiques.jsp" class="list-group-item">Antiques</a>
                        <hr>

                        <a href="Arts.jsp" class="list-group-item">Art</a>
                        <hr>

                        <a href="Interiors.jsp" class="list-group-item">Interior Furnitures</a>
                        <hr>

                        <a href="Clothes.jsp" class="list-group-item">Clothes</a>
                    </ul>

                </div>
                <div class="col-md-9">
                    <div id="carouselExample" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="view.jspcarouselExample" data-slide-to="0" class="active"></li>
                            <li data-target="view.jspcarouselExample" data-slide-to="1"></li>
                            <li data-target="view.jspcarouselExample" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="assets/images/banner1.png" alt="Slider 1" class="d-block w-100 slider-image" height="300px">
                            </div>
                            <div class="carousel-item">
                                <img src="assets/images/Untitled-1-012.png" alt="Slider 2" class="d-block w-100 slider-image" height="300px">
                            </div>
                            <div class="carousel-item">
                                <img src="assets/images/slider2.png" alt="Slider 3" class="d-block w-100 slider-image" height="300px">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="view.jspcarouselExample" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="view.jspcarouselExample" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <h5 style="color: navy blue; font-size: 26px; padding: 0px 0px" align="center">Latest </h5>
        <br>
        
        <div class="products">
        <%
        Datainfo d = new Datainfo();
        List<Products> p = d.getAllProducts();
        
        
        for(Products pr:p){
        	String s = pr.getImage();
        %>
			<div>
            <div class="image-container">
                <img src="assets/images/<%=s %>" alt="Image 1">
                <div class="description"><%=pr.getProductdescription() %> <br><%=pr.getProductname() %></div>
                <div class="price"><%=pr.getStarting_bp() %></div>
                <div class="links"><a href="view.jsp?id=<%=pr.getProductid()%>">Bid Now</a></div>
            </div>
             </div>
         <%
           }
         %>  
</div>

       <div class="foot">
        <footer>
            <div class="footer-content">
                <div class="footer-section">
                    <h3>About Us</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
                
                <div class="footer-section">
                    <h3>Contact Us</h3>
                    <p>Email: info@example.com</p>
                    <p>Phone: 123-456-7890</p>
                </div>
                
                <div class="emailSubscription">
                    <input type="email" id="emailInput" placeholder="Enter your email">
					<button id="subscribeButton">Subscribe</button>
					<div id="subscribeMessage">
					</div>
					
                </div>
            </div>
        </footer>
       </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        $("#subscribeButton").click(function() {
            var email = $("#emailInput").val();

            // Validate email address (you can add more validation if needed)
            if (email && isValidEmail(email)) {
                // Send a subscription request to your server
                $.ajax({
                    type: "POST",
                    url: "SendEmail", // Replace this with your server endpoint URL
                    data: { email: email },
                    success: function(response) {
                        // Handle the response from the server
                        $("#subscribeMessage").text(response); // Display the response message to the user
                    }
                });
            } else {
                $("#subscribeMessage").text("Invalid email address. Please try again."); // Display error message
            }
        });

        // Function to validate email address format
        function isValidEmail(email) {
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }
    });
     </script>
        

    </body>

    </html>