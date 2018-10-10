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
                        <h1 style="margin-bottom: 20pt; text-align: center;"><%=rs2.getString(10)%>'s Information</h1>

                        <table class="table" style="margin-left: 20pt; margin-right: 20pt;">
                            <tr style="background-color: lightgray;">
                                <td colspan="4" style="color: black; width: 100%; border-radius: 15px; border: none;"><strong>APPLICANT's DETAILS</strong></td>
                            </tr>
                            <tr>
                                <td style="color: black; text-align: left; width: 25%; border-top: none;"><strong>Full Name</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(10)%></strong></td>
                                <td style="color: black; text-align: left; width: 25%; border-top: none;"><strong>Gender</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(11)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>Date of Birth</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(12)%></strong></td>
                                <td style="text-align: left;"><strong></strong></td>
                                <td style="text-align: left;"><strong></strong></td>
                            </tr>
                        </table>
                        <table class="table" style="margin-left: 20pt; margin-right: 40pt;">
                            <tr style="background-color: lightgray;">
                                <td colspan="4" style="color: black; width: 100%; border-radius: 15px; border: none;"><strong>BASIC DETAILS</strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Registration Date</strong></td>
                                <td style="text-align: left; border-top: none;"><strong><%=rs2.getString(6)%></strong></td>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Admission Date</strong></td>
                                <td style="text-align: left; border-top: none;"><strong><%=rs2.getString(7)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>Batch Timing</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(8)%></strong></td>
                                <td style="text-align: left;"><strong></strong></td>
                                <td style="text-align: left;"><strong></strong></td>
                            </tr>
                        </table>
                        <table class="table" style="margin-left: 20pt; margin-right: 40pt;">
                            <tr style="background-color: lightgray; ">
                                <td colspan="4" style="color: black; width: 100%; border-radius: 15px; border: none;"><strong>CONTACT DETAILS</strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Address</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(13)%></strong></td>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Pin Code</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(14)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>UID No.</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(15)%></strong></td>
                                <td style="text-align: left; color: black;"><strong>State</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(16)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>State</strong></td>
                                <td style="text-align: left; color: black;"><strong><%=rs2.getString(18)%></strong></td>
                                <td style="text-align: left; color: black;"><strong>Email</strong></td>
                                <td style="text-align: left; color: black;"><strong><%=rs2.getString(19)%></strong></td>
                            </tr>
                        </table>


                        <table class="table" style="margin-left: 20pt; margin-right: 40pt;">
                            <tr style="background-color: lightgray;">
                                <td colspan="4" style="color: black; width: 100%; border-radius: 15px; border: none;"><strong>PARENT'S DETAILS</strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Parent's Name</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(21)%></strong></td>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Mobile</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(22)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black; width: 25%;"><strong>Mobile</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(23)%></strong></td>
                                <td style="text-align: left; color: black; width: 25%;"><strong>Parent's UID</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(24)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>Result Mode</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(25)%></strong></td>
                                <td style="text-align: left; color: black;"><strong>Mode detail</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(26)%></strong></td>
                            </tr>
                        </table>

                        <table class="table" style="margin-left: 20pt; margin-right: 40pt;">
                            <tr style="background-color: lightgray;">
                                <td colspan="4" style="color: black; width: 100%; border-radius: 15px; border: none;"><strong>QUALIFICATIONS DETAILS</strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Course</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(27)%></strong></td>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Branch</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(28)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>Passing Year</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(29)%></strong></td>
                                <td style="text-align: left; color: black;"><strong>College</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(30)%></strong></td>
                            </tr>
                        </table>

                        <table class="table" style="margin-left: 20pt; margin-right: 40pt;">
                            <tr style="background-color: lightgray;">
                                <td colspan="4" style="color: black; width: 100%; border-radius: 15px; border: none;"><strong>OFFICE USE DETAILS</strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Counselor</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(31)%></strong></td>
                                <td style="text-align: left; color: black; width: 25%; border-top: none;"><strong>Tele-Counselor</strong></td>
                                <td style="text-align: left; width: 25%; border-top: none;"><strong><%=rs2.getString(32)%></strong></td>
                            </tr>
                            <tr>
                                <td style="text-align: left; color: black;"><strong>Kiosk/ME</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(33)%></strong></td>
                                <td style="text-align: left; color: black;"><strong>Source</strong></td>
                                <td style="text-align: left;"><strong><%=rs2.getString(34)%></strong></td>
                            </tr>
                        </table>
                        <%}%>
                        <%

                            DatabaseConfig.connectDB();
                            String query = "select * from dispatch_details where stud_id = '" + stud_id + "'";
                            PreparedStatement pst = DatabaseConfig.conn.prepareStatement(query);
                            ResultSet rs = pst.executeQuery();
                            while (rs.next()) {
                        %>
                        <h1 style="margin-bottom: 20pt; text-align: center;">Document Dispatch Details</h1>
                            <form method="post" action="dispatchDetails.jsp" class="StudForm">
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
                                    </label>
                                </div>
                                <div class="col-1">
                                    <label class="labelClassHead">Essentials
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        ID Card: 
                                        <input id="company" name="stud_name" value="<%=rs.getString(3)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        Bonafide:
                                        <input id="company" name="stud_name" value="<%=rs.getString(4)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        Tool-FRP: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(5)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        Tool-HDP: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(6)%>" disabled>
                                    </label>
                                </div>

                                <div class="col-3">
                                    <label>
                                        Loan Letter:
                                        <input id="company" name="stud_name" value="<%=rs.getString(7)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        Income Tax: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(8)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        e-Kit: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(9)%>" disabled>
                                    </label>
                                </div>

                                <div class="col-1">
                                    <label class="labelClassHead">Books
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        Networking: 
                                        <input id="company" name="stud_name" value="<%=rs.getString(10)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        Linux:
                                        <input id="company" name="stud_name" value="<%=rs.getString(11)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        CCNA: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(12)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        Windows Server: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(13)%>" disabled>
                                    </label>
                                </div>

                                <div class="col-3">
                                    <label>
                                        Hardware:
                                        <input id="company" name="stud_name" value="<%=rs.getString(14)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-3">
                                    <label>
                                        Windows 10: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(15)%>" disabled>
                                    </label>
                                </div>  

                                <div class="col-1">
                                    <label class="labelClassHead">Certificates
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        Diploma: 
                                        <input id="company" name="stud_name" value="<%=rs.getString(16)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        Networking:
                                        <input id="company" name="stud_name" value="<%=rs.getString(17)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        CCNA: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(18)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        Linux: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(19)%>" disabled>
                                    </label>
                                </div>

                                <div class="col-4">
                                    <label>
                                        Windows Server:
                                        <input id="company" name="stud_name" value="<%=rs.getString(20)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        PHP: 

                                        <input id="company" name="stud_name" value="<%=rs.getString(21)%>" disabled>
                                    </label>
                                </div>  

                                <div class="col-4">
                                    <label>
                                        Hardware & Networking:
                                        <input id="company" name="stud_name" value="<%=rs.getString(22)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-4">
                                    <label>
                                        MCSE: 
                                        <input id="company" name="stud_name" value="<%=rs.getString(23)%>" disabled>
                                    </label>
                                </div>  
                                <%}%>

                                <!--<div class="col-submit" style="color:black;">
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary btn-send-message" value="Continue to update">
                                    </div>
                                </div>-->
                            </form>
                                <%
                        String query3 = null;
                        if (stud_id.startsWith("NT")) {
                            query3 = "select * from ntech_technology where stud_id = '" + stud_id + "'";
                            PreparedStatement pst3 = DatabaseConfig.conn.prepareStatement(query3);
                            ResultSet rs3 = pst3.executeQuery();
                            while (rs3.next()) {%>
                            <h1 style="margin-bottom: 20pt; text-align: center;">Technology Mapping</h1>
                            <form method="post" action="nontechTechnologyDetails.jsp" class="StudForm">
                                <div class="col-1">
                                    <label class="labelClassHead">Basic Information
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Student ID:
                                        <input id="name" value="<%=rs3.getString(1)%>" disabled>
                                        <input id="name" type="hidden" name="stud_id" value="<%=rs3.getString(1)%>">
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Student Name:
                                        <input id="company" name="stud_name" value="<%=rs3.getString(2)%>" disabled>
                                        <input id="name" type="hidden" name="stud_name" value="<%=rs3.getString(2)%>">
                                    </label>
                                </div>
                                <div class="col-1">
                                    <label class="labelClassHead">Technology Mapping
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Hardware
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(3)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Networking
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(4)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Windows 10
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(5)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Windows Server
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(6)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        CCNA
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(7)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        LINUX Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(8)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Windows Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(9)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        LINUX
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(10)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        CCNA Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(11)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Network Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(12)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Wireless Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(13)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        PHP
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(14)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Web Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(15)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Cloud
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(16)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Web Development
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(17)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Digital Marketing
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(18)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        IOT
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(19)%>" disabled>
                                    </label>
                                </div>
<%}}%>
                            </form>
                            <%
                        if (stud_id.startsWith("T")) {
                            query3 = "select * from tech_technology where stud_id = '" + stud_id + "'";
                            PreparedStatement pst3 = DatabaseConfig.conn.prepareStatement(query3);
                            ResultSet rs3 = pst3.executeQuery();
                            while (rs3.next()) {%>
                            <h1 style="margin-bottom: 20pt; text-align: center;">Technology Mapping</h1>
                            <form method="post" action="techTechnologyDetails.jsp" class="StudForm">
                                <div class="col-1">
                                    <label class="labelClassHead">Basic Information
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Student ID:
                                        <input id="name" value="<%=rs3.getString(1)%>" disabled>
                                        <input id="name" type="hidden" name="stud_id" value="<%=rs3.getString(1)%>">
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Student Name:
                                        <input id="company" name="stud_name" value="<%=rs3.getString(2)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-1">
                                    <label class="labelClassHead">Technology Mapping
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Networking
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(3)%>" disabled>
                                    </label>
                                </div>

                                <div class="col-2">
                                    <label>
                                        Linux
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(4)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        CCNA
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(5)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Windows Server
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(6)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Network Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(7)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        CCNA Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(8)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        LINUX Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(9)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Windows Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(10)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Wireless
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(11)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        PHP
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(12)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Web Security
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(13)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Python
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(14)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Cloud AWS
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(15)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Cloud API
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(16)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        IOT
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(17)%>" disabled>
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        AI
                                    </label>
                                </div>
                                <div class="col-2">
                                    <label>
                                        <input id="company" name="stud_name" value="<%=rs3.getString(18)%>" disabled>
                                    </label>
                                </div>
                            </form>
                                    <%}}%>
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
