<%-- 
    Document   : index
    Created on : Sep 22, 2018, 11:15:38 PM
    Author     : YASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Atlas</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <!--js-->
        <script src="js/jquery-2.1.1.min.js"></script> 
        <!--icons-css-->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!--Google Fonts-->
        <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
        <!--static chart-->
        <script src="js/Chart.min.js"></script>
        <!--//charts-->
        <!-- geo chart -->
        <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
        <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
        <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
        <!-- Chartinator  -->
        <script src="js/chartinator.js" ></script>


        <!--skycons-icons-->
        <script src="js/skycons.js"></script>
        <!--//skycons-icons-->
    </head>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        String name = (String) session.getAttribute("currentID");
        String uname = name.toUpperCase();
        if (uname == null) {
            response.sendRedirect("signin");
        }
        String urole = (String) session.getAttribute("userRole");
    %>
    <body>	
        <div class="page-container">	
            <div class="left-content">
                <div class="mother-grid-inner">
                    <!--header start here-->
                    <%@include file="header.jsp" %>
                    <!-- /script-for sticky-nav -->
                    <!--inner block start here-->
                    <div class="inner-block">
                        <!--market updates updates-->
                        <div class="market-updates">
                            <div class="col-md-4 market-update-gd">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3>83</h3>
                                        <h4>Registered User</h4>
                                        <p>Other hand, we denounce</p>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-file-text-o"> </i>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-md-4 market-update-gd">
                                <div class="market-update-block clr-block-2">
                                    <div class="col-md-8 market-update-left">
                                        <h3>135</h3>
                                        <h4>Daily Visitors</h4>
                                        <p>Other hand, we denounce</p>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-eye"> </i>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-md-4 market-update-gd">
                                <div class="market-update-block clr-block-3">
                                    <div class="col-md-8 market-update-left">
                                        <h3>23</h3>
                                        <h4>New Messages</h4>
                                        <p>Other hand, we denounce</p>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-envelope-o"> </i>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <!--market updates end here-->
                        <!--mainpage chit-chating-->
                        <div class="chit-chat-layer1">
                            <div class="col-md-6 chit-chat-layer1-left">
                                <div class="work-progres">
                                    <div class="chit-chat-heading">
                                        Recent Followers
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Project</th>
                                                    <th>Manager</th>                                   

                                                    <th>Status</th>
                                                    <th>Progress</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Face book</td>
                                                    <td>Malorum</td>                                 

                                                    <td><span class="label label-danger">in progress</span></td>
                                                    <td><span class="badge badge-info">50%</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Twitter</td>
                                                    <td>Evan</td>                               

                                                    <td><span class="label label-success">completed</span></td>
                                                    <td><span class="badge badge-success">100%</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Google</td>
                                                    <td>John</td>                                

                                                    <td><span class="label label-warning">in progress</span></td>
                                                    <td><span class="badge badge-warning">75%</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>LinkedIn</td>
                                                    <td>Danial</td>                                 

                                                    <td><span class="label label-info">in progress</span></td>
                                                    <td><span class="badge badge-info">65%</span></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>Tumblr</td>
                                                    <td>David</td>                                

                                                    <td><span class="label label-warning">in progress</span></td>
                                                    <td><span class="badge badge-danger">95%</span></td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>Tesla</td>
                                                    <td>Mickey</td>                                  

                                                    <td><span class="label label-info">in progress</span></td>
                                                    <td><span class="badge badge-success">95%</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 chit-chat-layer1-right"> 
                                <div class="glocy-chart">
                                    <div class="span-2c">  
                                        <h3 class="tlt">Sales Analytics</h3>
                                        <canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                                        <script>
                                            var barChartData = {
                                                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "jul"],
                                                datasets: [
                                                    {
                                                        fillColor: "#FC8213",
                                                        data: [65, 59, 90, 81, 56, 55, 40]
                                                    },
                                                    {
                                                        fillColor: "#337AB7",
                                                        data: [28, 48, 40, 19, 96, 27, 100]
                                                    }
                                                ]

                                            };
                                            new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);

                                        </script>
                                    </div> 			  		   			
                                </div>
                            </div>

                            <div class="clearfix"> </div>
                        </div>
                        <!--main page chart layer2-->
                        <div class="chart-layer-2">

                            <div class="col-md-6 chart-layer2-right">
                                <div class="prograc-blocks">
                                    <!--Progress bars-->
                                    <div class="home-progres-main">
                                        <h3>Total Sales</h3>
                                    </div>
                                    <div class='bar_group'>
                                        <div class='bar_group__bar thin' label='Rating' show_values='true' tooltip='true' value='343'></div>
                                        <div class='bar_group__bar thin' label='Quality' show_values='true' tooltip='true' value='235'></div>
                                        <div class='bar_group__bar thin' label='Amount' show_values='true' tooltip='true' value='550'></div>
                                        <div class='bar_group__bar thin' label='Farming' show_values='true' tooltip='true' value='456'></div>
                                    </div>
                                    <script src="js/bars.js"></script>

                                    <!--//Progress bars-->
                                </div>
                            </div>
                            <div class="col-md-6 chart-layer2-left">
                                <div class="content-main revenue">			
                                    <h3>Total Revenue</h3>
                                    <canvas id="radar" height="300" width="300" style="width: 300px; height: 300px;"></canvas>
                                    <script>
                                            var radarChartData = {
                                                labels: ["", "", "", "", "", "", ""],
                                                datasets: [
                                                    {
                                                        fillColor: "rgba(104, 174, 0, 0.83)",
                                                        strokeColor: "#68ae00",
                                                        pointColor: "#68ae00",
                                                        pointStrokeColor: "#fff",
                                                        data: [65, 59, 90, 81, 56, 55, 40]
                                                    },
                                                    {
                                                        fillColor: "rgba(236, 133, 38, 0.82)",
                                                        strokeColor: "#ec8526",
                                                        pointColor: "#ec8526",
                                                        pointStrokeColor: "#fff",
                                                        data: [28, 48, 40, 19, 96, 27, 100]
                                                    }
                                                ]

                                            };
                                            new Chart(document.getElementById("radar").getContext("2d")).Radar(radarChartData);
                                    </script>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                        <!--climate start here-->

                        <!--climate end here-->
                    </div>
                    <!--inner block end here-->
                    <!--copy rights start here-->
                    <div class="copyrights">
                        <p>© 2018 ATLAS. All Rights Reserved</p>
                    </div>	
                    <!--COPY rights end here-->
                </div>
            </div>
            <!--slider menu-->
            <%@include file="sidebar.jsp" %>
            <div class="clearfix"> </div>
        </div>
        
        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->
        <script src="js/bootstrap.js"></script>
        <!-- mother grid end here-->
    </body>
</html>                     
