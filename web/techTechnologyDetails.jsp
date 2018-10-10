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
        String stud_id = request.getParameter("stud_id");
    DatabaseConfig.connectDB();
    String query = "select * from tech_technology where stud_id = '" + stud_id + "'";
    PreparedStatement pst = DatabaseConfig.conn.prepareStatement(query);
    ResultSet rs = pst.executeQuery();
    while (rs.next()) {
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
                        <h1 style="text-align: center;">Technology Details</h1>
            <form method="post" action="updateTechTechnology.jsp" class="StudForm">
                <div class="col-1">
                    <label class="labelClassHead">Basic Information
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        Student ID:
                        <input id="name" value="<%=rs.getString(1)%>" disabled>
                        <input id="name" type="hidden" name="stud_id" value="<%=rs.getString(1)%>">
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        Student Name:
                        <input id="company" value="<%=rs.getString(2)%>" disabled>
                        <input id="name" type="hidden" name="stud_name" value="<%=rs.getString(2)%>">
                        <input id="name" type="hidden" name="stud_name" value="<%=rs.getString(2)%>">
                    </label>
                </div>
                <div class="col-1">
                    <label class="labelClassHead">Technology Mapping
                    </label>
                </div>
                <div class="col-2" style="height: 51px;">
                    <label>
                        Networking
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(3).equals("Not_Completed")) {%>
                        <select tabindex="1" name="networking">
                            <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(3).equals("Completed")) {%>
                        <input value="<%=rs.getString(3)%>" disabled>
                        <input type="hidden" name="networking" value="<%=rs.getString(3)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        CCNA
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(4).equals("Not_Completed")) {%>
                        <select name="ccna" tabindex="1">
                            <option value="<%=rs.getString(4)%>"><%=rs.getString(4)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(4).equals("Completed")) {%>
                        <input value="<%=rs.getString(4)%>" disabled>
                        <input type="hidden" name="ccna" value="<%=rs.getString(4)%>">
                        <% }
                        %>
                    </label>
                </div>
                    <div class="col-2" style="height: 48px;">
                    <label>
                        Linux
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(5).equals("Not_Completed")) {%>
                        <select tabindex="1" name="linux">
                            <option value="<%=rs.getString(5)%>"><%=rs.getString(5)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(5).equals("Completed")) {%>
                        <input value="<%=rs.getString(5)%>" disabled>
                        <input type="hidden" name="linux" value="<%=rs.getString(5)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Windows Server
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(6).equals("Not_Completed")) {%>
                        <select name="win_server" tabindex="1">
                            <option value="<%=rs.getString(6)%>"><%=rs.getString(6)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(6).equals("Completed")) {%>
                        <input value="<%=rs.getString(6)%>" disabled>
                        <input type="hidden" name="win_server" value="<%=rs.getString(6)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Network Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(7).equals("Not_Completed")) {%>
                        <select name="net_security" tabindex="1">
                            <option value="<%=rs.getString(7)%>"><%=rs.getString(7)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(7).equals("Completed")) {%>
                        <input value="<%=rs.getString(7)%>" disabled>
                        <input type="hidden" name="net_security" value="<%=rs.getString(7)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        CCNA Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(8).equals("Not_Completed")) {%>
                        <select name="ccna_security" tabindex="1">
                            <option value="<%=rs.getString(8)%>"><%=rs.getString(8)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(8).equals("Completed")) {%>
                        <input value="<%=rs.getString(8)%>" disabled>
                        <input type="hidden" name="ccna_security" value="<%=rs.getString(8)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        LINUX Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(9).equals("Not_Completed")) {%>
                        <select name="linux_security" tabindex="1">
                            <option value="<%=rs.getString(9)%>"><%=rs.getString(9)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(9).equals("Completed")) {%>
                        <input value="<%=rs.getString(9)%>" disabled>
                        <input type="hidden" name="linux_security" value="<%=rs.getString(9)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Windows Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(10).equals("Not_Completed")) {%>
                        <select name="win_security" tabindex="1">
                            <option value="<%=rs.getString(10)%>"><%=rs.getString(10)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(10).equals("Completed")) {%>
                        <input value="<%=rs.getString(10)%>" disabled>
                        <input type="hidden" name="win_security" value="<%=rs.getString(10)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Wireless
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(11).equals("Not_Completed")) {%>
                        <select name="wireless" tabindex="1">
                            <option value="<%=rs.getString(11)%>"><%=rs.getString(11)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(11).equals("Completed")) {%>
                        <input value="<%=rs.getString(11)%>" disabled>
                        <input type="hidden" name="wireless" value="<%=rs.getString(11)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        PHP
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(12).equals("Not_Completed")) {%>
                        <select name="php" tabindex="1">
                            <option value="<%=rs.getString(12)%>"><%=rs.getString(12)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(12).equals("Completed")) {%>
                        <input value="<%=rs.getString(12)%>" disabled>
                        <input type="hidden" name="php" value="<%=rs.getString(12)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Web Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(13).equals("Not_Completed")) {%>
                        <select name="web_security" tabindex="1">
                            <option value="<%=rs.getString(13)%>"><%=rs.getString(13)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(13).equals("Completed")) {%>
                        <input value="<%=rs.getString(13)%>" disabled>
                        <input type="hidden" name="web_security" value="<%=rs.getString(13)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Python
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(14).equals("Not_Completed")) {%>
                        <select name="python" tabindex="1">
                            <option value="<%=rs.getString(14)%>"><%=rs.getString(14)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(14).equals("Completed")) {%>
                        <input value="<%=rs.getString(14)%>" disabled>
                        <input type="hidden" name="python" value="<%=rs.getString(14)%>">
                        <% }
                        %>
                        <%
                                if (rs.getString(14).equals("NA")) {%>
                        <input value="<%=rs.getString(14)%>" disabled>
                        <input type="hidden" name="python" value="<%=rs.getString(14)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Cloud AWS
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(15).equals("Not_Completed")) {%>
                        <select name="cloud_aws" tabindex="1">
                            <option value="<%=rs.getString(15)%>"><%=rs.getString(15)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(15).equals("Completed")) {%>
                        <input value="<%=rs.getString(15)%>" disabled>
                        <input type="hidden" name="cloud_aws" value="<%=rs.getString(15)%>">
                        <% }
                        %>
                        <%
                                if (rs.getString(15).equals("NA")) {%>
                        <input value="<%=rs.getString(15)%>" disabled>
                        <input type="hidden" name="cloud_aws" value="<%=rs.getString(15)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Cloud API
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(16).equals("Not_Completed")) {%>
                        <select name="cloud_api" tabindex="1">
                            <option value="<%=rs.getString(16)%>"><%=rs.getString(16)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(16).equals("Completed")) {%>
                        <input value="<%=rs.getString(16)%>" disabled>
                        <input type="hidden" name="cloud_api" value="<%=rs.getString(16)%>">
                        <% }
                        %>
                        <%
                                if (rs.getString(16).equals("NA")) {%>
                        <input value="<%=rs.getString(16)%>" disabled>
                        <input type="hidden" name="cloud_api" value="<%=rs.getString(16)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        IOT
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(17).equals("Not_Completed")) {%>
                        <select name="iot" tabindex="1">
                            <option value="<%=rs.getString(17)%>"><%=rs.getString(17)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(17).equals("Completed")) {%>
                        <input value="<%=rs.getString(17)%>" disabled>
                        <input type="hidden" name="iot" value="<%=rs.getString(17)%>">
                        <% }
                        %>
                        <%
                                if (rs.getString(17).equals("NA")) {%>
                        <input value="<%=rs.getString(17)%>" disabled>
                        <input type="hidden" name="iot" value="<%=rs.getString(17)%>">
                        <% }
                        %>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        AI
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <%
                                if (rs.getString(18).equals("Not_Completed")) {%>
                        <select name="ai" tabindex="1">
                            <option value="<%=rs.getString(18)%>"><%=rs.getString(18)%></option>
                            <option value="Completed">Completed</option>
                        </select>
                        <% }
                        %>
                        <%
                                if (rs.getString(18).equals("Completed")) {%>
                        <input value="<%=rs.getString(18)%>" disabled>
                        <input type="hidden" name="ai" value="<%=rs.getString(18)%>">
                        <% }
                        %>
                        <%
                                if (rs.getString(18).equals("NA")) {%>
                        <input value="<%=rs.getString(18)%>" disabled>
                        <input type="hidden" name="ai" value="<%=rs.getString(18)%>">
                        <% }
                        %>
                    </label>
                </div>
                <%}%>


                <div class="col-submit">
                    <button class="submitbtn" tabindex="32">Update</button>
                </div>

            </form>
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
