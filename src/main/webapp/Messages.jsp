<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List,DataInfoImpl.Datainfo" %>

<!DOCTYPE html>
<html>

<head>
    <!-- <link rel="stylesheet" href="assets/styles/see.css"> -->
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
            background: #CBC3E3;
            position: center;
            align-content: space-between;
        }
        
        .content .link-boxes .box .link_name {
            font-size: 18px;
            font-weight: 400;
            margin-bottom: 10px;
            position: relative;
        }
        
        .container {
            justify-content: center;
            align-items: center;
            margin-top: 10%;
        }
        
        .product-container {
            display: flex;
            flex-wrap: nowrap;
            align-items: center;
            justify-content: center;
        }
        
        .product-image img {
            max-width: 200px;
            max-height: 200px;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="product-container">
            <table class="table table-bordered table-striped text-center">
                <thead>
                    <tr>
                        <th scope="col">S.N</th>
                        <th scope="col">id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Message</th>
                    </tr>
                </thead>

                <tbody>
                <%
                
                List<List<String>> l = Datainfo.FetchMessages();
                for(List<String> s : l){
                
                %>
                    <tr>
                        <td>
                            <%=s.get(0) %>
                        </td>
                        <td>
                            <%=s.get(1) %>
                        </td>
                        <td>
                            <%=s.get(2) %>
                        </td>
                        <td>
                            <%=s.get(3) %>
                        </td>
                        
                    </tr>
                    
                    <%
                }
                    %>
                </tbody>


            </table>
        </div>
    </div>
</body>

</html>

