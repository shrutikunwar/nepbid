<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="DataInfoImpl.Datainfo" %>
    
 <!DOCTYPE html>
<html lang="en">


<%
String id = (String) session.getAttribute("aid");

int totalproduct = Datainfo.TotalSellerProduct(Integer.parseInt(id));

int totalproductpending = Datainfo.TotalSellerProductsPending(Integer.parseInt(id));

long highestbid = Datainfo.HighestProductBId(Integer.parseInt(id));

int totalproductalloted = Datainfo.TotalProductSellerAlloted(Integer.parseInt(id));


%>



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
            var a1 = <%=totalproduct%>;
            var b1 = <%=totalproductpending%>;
            var c1 = <%=totalproductalloted%>;

            var data = google.visualization.arrayToDataTable([
                ['Roles', 'No of People'],
                ['Total Products', a1],
                ['Products pending', b1],
                ['products alloted', c1],
            ]);

            var options = {
                title: 'Ratio of Products Scheme',
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
    <section class="record">
        <h1>Real time Records</h1>
        <div class="dashboard">
            <div class="dashboard-card" id="studentCard">
                <h2>Total Products</h2>
                <p id="ProductsCount">
                    <%=totalproduct%>
                </p>
            </div>


            <div class="dashboard-card" id="teacherCard">
                <h2>Highest Bid</h2>
                <p id="Highest Bid">
                   <%=highestbid %>
                </p>
            </div>


            <div class="dashboard-card" id="courseCard">
                <h2>Allotment pending</h2>
                <p id="">
                    <%=totalproductpending%>
                </p>
            </div>

            <div class="dashboard-card" id="courseCard">
                <h2>Allotment Done</h2>
                <p id="">
                   <%=totalproductalloted%>
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