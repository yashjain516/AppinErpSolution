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
        String queryForm = "select * from regis_form where stud_id = '" + stud_id + "'";
        PreparedStatement pst2 = DatabaseConfig.conn.prepareStatement(queryForm);
        ResultSet rs2 = pst2.executeQuery();

        while (rs2.next()) {
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
                        <h1 style="text-align: center;">Update Student Profile</h1>
                <form method="post" action="updateStudDataAction.jsp" class="StudForm">
                    <div class="col-1">
                        <label class="labelClassHead">Basic Information
                        </label>
                    </div>
                    
                    <div class="col-3">
                        <label>
                            Batch Timing:
                            <input id="email" name="stud_batch_timing" tabindex="5" value="<%=rs2.getString(8)%>">
                            
                            
                            <input type="hidden" name="stud_id" tabindex="5" value="<%=rs2.getString(2)%>">
                        </label>
                    </div>

                    <!--<div class="col-3">
                      <label>
                        Availability
                        <select tabindex="5">
                          <option>5-15 hrs per week</option>
                          <option>15-30 hrs per week</option>
                          <option>30-40 hrs per week</option>
                        </select>
                      </label>
                    </div>-->
                    <!--<h4>Applicant's Information</h4>-->
                    

                    <div class="col-3">
                        <label>Mobile:  
                            <input id="skills" name="stud_mobile" tabindex="15" value="<%=rs2.getString(18)%>">
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Email: 
                            <input id="skills" name="stud_email" tabindex="16" value="<%=rs2.getString(19)%>">
                        </label>
                    </div>

                    <div class="col-1">
                        <label class="labelClassHead">Parent's Contact Details
                        </label>
                    </div>      

                    <div class="col-3">
                        <label>Mobile: 
                            <input id="skills" name="stud_father_mobile" tabindex="20" value="<%=rs2.getString(23)%>">
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Result dispatch details:
                            <input id="enterDetails" type="text" name="stud_result_mode_details" tabindex="23" value="<%=rs2.getString(26)%>">
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
