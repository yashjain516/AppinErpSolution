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
         String urole = (String) session.getAttribute("userRole");
    if (!urole.equalsIgnoreCase("mgmt")) {
        response.sendRedirect("welcome");
    }
    String stud_id = request.getParameter("id");
    DatabaseConfig.connectDB();
    String query = "select * from ntech_technology where stud_id = '" + stud_id + "'";
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
            <form method="post" action="nontechTechnologyDetails.jsp" class="StudForm">
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
                        <input id="company" name="stud_name" value="<%=rs.getString(2)%>" disabled>
                        <input id="name" type="hidden" name="stud_name" value="<%=rs.getString(2)%>">
                    </label>
                </div>
                <div class="col-1">
                    <label class="labelClassHead">Technology Mapping
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Hardware
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(3)%>" disabled>
                    </label>
                </div>
                <div class="col-2" style="height: 48px;">
                    <label>
                        Networking
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(4)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Windows 10
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(5)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Windows Server
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(6)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        CCNA
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(7)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        LINUX Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(8)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Windows Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(9)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        LINUX
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(10)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        CCNA Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(11)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Network Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(12)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Wireless Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(13)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        PHP
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(14)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Web Security
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(15)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Cloud
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(16)%>" disabled>
                    </label>
                </div>
                     <div class="col-2" style="height: 48px;">
                    <label>
                        Web Development
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(17)%>" disabled>
                    </label>
                </div>
                    <div class="col-2" style="height: 48px;">
                    <label>
                        Digital Marketing
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(18)%>" disabled>
                    </label>
                </div>
                    <div class="col-2" style="height: 48px;">
                    <label>
                        IOT
                    </label>
                </div>
                <div class="col-2">
                    <label>
                        <input id="company" name="stud_name" value="<%=rs.getString(19)%>" disabled>
                    </label>
                </div>
                <%}%>
                

                <div class="col-submit">
                    <button class="submitbtn" tabindex="32">Continue to Update....</button>
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
