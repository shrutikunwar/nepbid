<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="DataInfoImpl.Datainfo,java.util.List"%>
<%@page import="com.biddingsystem.model.Bid"%>

<!DOCTYPE html>

<html>



<head>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Product Details</title>

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

            display: grid;

            height: 100vh;

            width: 100%;

            place-items: left;

            background: #ffffff;

            position: center;

            align-content: space-between;

        }

        .container {

            display: flex;

            justify-content: center;

            align-items: center;

        }



        .product-container {

            display: flex;

            gap: 20px;

            align-items: center;

        }



        .product-image img {

            max-width: 200px;

            max-height: 200px;

        }

    </style>

</head>



<body>
<%
Datainfo datainfo = new Datainfo();
List<Bid> list = datainfo.getAllBids();
%>


    <div class="container">

        <div class="product-container">

            <table class="table table-bordered table-striped text-center">

                <thead>

                    <tr>

                        <th scope="col">Product ID</th>

                        <th scope="col">Bidder ID</th>

                        <th scope="col">Seller ID</th>

                        <th scope="col">Status</th>

                        <th scope="col">Bid Amount </th>
                        
                        <th scope="col">Allotment</th>
                    </tr>
                </thead>
                <tbody>
                
                  <%
                            
                              for(Bid p : list)
                              {
                   %>
                        <tr>

                            <td scope="col">

                                <%=p.getPid()%>

                            </td>

                            <td scope="col">

                                <%=p.getBid() %>

                            </td>

                            <td scope="col">

                               <%=p.getSid() %>

                            </td>

                            <td scope="col">

                                <%=p.getStatus() %>

                            </td>

                            <td scope="col">

                               <%=p.getBidamount() %>

                            </td>
                             <td>
                              <a  href="allot?id=<%= p.getPid()%>" type = "submit" class="btn btn-success btn-sm allotment-btn" data-value="Yes">Yes</a>
                              <a  href="noallot?ids=<%=p.getPid() %>" type = "submit" style="background:red;" class="btn btn-success btn-sm allotment-btn" data-value="No">No</a>
                        </td>

                          <%
                              }
                          %>


                        </tr>
                        


                </tbody>





            </table>

        </div>

    </div>

</body>



</html>