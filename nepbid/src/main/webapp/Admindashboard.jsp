<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="DataInfoImpl.Datainfo" %>
    
 
 <% Datainfo d = new Datainfo();
    int a1 = d.fetchBidder();
    int b1 = d.fetchproduct();
    int c1 = d.fetchseller();
  
 %>

                            <!DOCTYPE html>
                            <html lang="en">

                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                                 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

                                <script type="text/javascript">
                                    google.charts.load("current", {
                                        packages: ["corechart"]
                                    });
                                    google.charts.setOnLoadCallback(drawChart);

                                    function drawChart() {
                                        var a1 = <%=a1%>;
                                        var b1 = <%=c1%>;

                                        var data = google.visualization.arrayToDataTable([
                                            ['Roles', 'No of People'],
                                            ['Bidders', a1],
                                            ['Sellers', b1],
                                        ]);

                                        var options = {
                                            title: 'Ratio of People in Organization',
                                            is3D: true,
                                        };

                                        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                                        chart.draw(data, options);
                                    }
                                </script>


                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        margin: 0;
                                        padding: 0;
                                        justify-content: center;
                                        align-items: center;
                                        min-height: 100vh;
                                        background: linear-gradient(to right, #81e6dc, white, #800080);
                                    }
                                    
                                    .dashboard {
                                        display: flex;
                                        flex-wrap: wrap;
                                        align-items: center;
                                        gap: 20px;
                                        padding: 20px;
                                    }
                                    
                                    .dashboard-card {
                                        text-align: center;
                                        padding: 10px 20px;
                                        border-radius: 8px;
                                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                                    }
                                    
                                    h1 {
                                        justify-content: center;
                                        text-align: center;
                                    }
                                    
                                    .Graphs {
                                        padding: 15px;
                                    }
                                    
                                    .chart {
                                        display: flex;
                                        margin-top: 20px;
                                    }
                                    
                                    .chart>div {
                                        flex: 1;
                                    }
                                </style>
                            </head>

                            <body>
                                <section class="record" >
                                    <h1>Real time Records</h1>
                                    <div class="dashboard" >
                                        <div class="dashboard-card" id="studentCard">
                                            <h2>Total Products</h2>
                                            <p id="ProductCount">
                                                <%=b1 %>
                                            </p>
                                        </div>


                                        <div class="dashboard-card" id="teacherCard">
                                            <h2>Total Sellers</h2>
                                            <p id="BidderCount">
                                               <%=b1%>
                                            </p>
                                        </div>


                                        <div class="dashboard-card" id="courseCard">
                                            <h2>Total Bidders</h2>
                                            <p id="SellerCount">
                                               <%=a1 %>
                                            </p>
                                        </div>




                                    </div>
                                </section>

                                <section class="Graphs">
                                    <h1>Graphical Representation</h1>
                                    <div class="chart" style="background:transparent;">
                                        <div id="piechart_3d" style="width: 400px; height: 250px;"></div>
                                    </div>
                                </section>

                            </body>

                            </html>