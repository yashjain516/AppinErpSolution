<%-- 
    Document   : index
    Created on : Sep 22, 2018, 11:15:38 PM
    Author     : YASH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconfig.DatabaseConfig"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Atlas - Batch Schedule</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/hover.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/demo-page.css" rel="stylesheet" media="all">
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
        <style>
            /* Center the loader */
            #loader {
                position: absolute;
                left: 50%;
                top: 50%;
                z-index: 1;
                width: 150px;
                height: 150px;
                margin: -75px 0 0 -75px;
                border: 16px solid #f3f3f3;
                border-radius: 50%;
                border-top: 16px solid #3498db;
                width: 120px;
                height: 120px;
                -webkit-animation: spin 2s linear infinite;
                animation: spin 2s linear infinite;
            }

            @-webkit-keyframes spin {
                0% { -webkit-transform: rotate(0deg); }
                100% { -webkit-transform: rotate(360deg); }
            }

            @keyframes spin {
                0% { transform: rotate(0deg); }
                100% { transform: rotate(360deg); }
            }

            @-webkit-keyframes animatebottom {
                from { bottom:-100px; opacity:0 } 
                to { bottom:0px; opacity:1 }
            }

            @keyframes animatebottom { 
                from{ bottom:-100px; opacity:0 } 
                to{ bottom:0; opacity:1 }
            }</style>
        <script>
            function myFunction2() {
                var input, filter, table, tr, td, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[2];
                    if (td) {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
    </head>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        String name = (String) session.getAttribute("currentID");
        String uname = name.toUpperCase();
        if (uname == null) {
            response.sendRedirect("signin");
        }
        String batchName = null;
        String urole = (String) session.getAttribute("userRole");
    %>
    <body onload="myFunction()">
        <div id="loader"></div>
        <div class="page-container" id="mainDiv" style="display:none;">	
            <div class="left-content">
                <div class="mother-grid-inner">
                    <!--header start here-->
                    <%@include file="header.jsp" %>
                    <!-- /script-for sticky-nav -->
                    <!--inner block start here-->
                    <div class="inner-block">

                        <h1 style="text-align: center; margin-top: -30pt;">Batch Scheduling</h1>
                        <div class="btn-effcts panel-widget" style="text-align: center; padding-bottom: 20pt; padding-top: 40pt;">    
<form action="AddBatchStudent" method="post" name="BatchForm">
                            <div class="row mb40">


                                <%
                                    DatabaseConfig.connectDB();
                                    String query = "select * from batch_created";
                                    PreparedStatement pst = DatabaseConfig.conn.prepareStatement(query);
                                    ResultSet rs = pst.executeQuery();
                                %>
                                <div class="col-md-12">
                                    <label>Select Batch</label>
                                    <div class="form-group">
                                        <select class="form-control" name="batch_technology">
                                            <option value="">---Select One---</option>
                                            <%while (rs.next()) {
                                                    batchName = rs.getString(1);
                                            %>
                                            <option value="<%=batchName%>"><%=batchName%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Search Student (by name)</label>
                                        <input type="text" id="myInput" onkeyup="myFunction2()" class="form-control" placeholder="Search student">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Complete Student List</label>
                                        
                                    </div>
                                </div>
                                <table class="table table-hover" id="myTable">
                                    <tr>
                                        <th scope="col" style="text-align: center;"><strong>Select</strong></th>
                                        <th scope="col" style="text-align: center;"><strong>Student ID</strong></th>
                                        <th scope="col" style="text-align: center;"><strong>Student Name</strong></th>
                                        <th scope="col" style="text-align: center;"><strong>Mobile</strong></th>
                                    </tr>
                                    <%
                                        String query2 = "select stud_id, stud_name, stud_mobile from regis_form";
                                        PreparedStatement pst2 = DatabaseConfig.conn.prepareStatement(query2);
                                        ResultSet rs2 = pst2.executeQuery();
                                        while (rs2.next()) {
                                    %>
                                    <tr>
                                        <td><input type="checkbox" name="stud_id" value="<%=rs2.getString(1)%>"/></td>
                                        <td><%=rs2.getString(1)%></td>
                                        <td><%=rs2.getString(2)%></td>
                                        <td><%=rs2.getString(3)%></td>
                                    </tr>
                                    <%}%>
                                </table>

                                <a href="javascript:document.BatchForm.submit();" class="hvr-underline-from-center" style="margin-top: 20pt; vertical-align: bottom;">Schedule Batch</a>

                            </div>

</form>
                        </div>


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
        <script>
            var myVar;

            function myFunction() {
                myVar = setTimeout(showPage, 2000);
            }

            function showPage() {
                document.getElementById("loader").style.display = "none";
                document.getElementById("mainDiv").style.display = "block";
            }
        </script>
        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->
        <script src="js/bootstrap.js"></script>
        <!-- mother grid end here-->
    </body>
</html>                     
