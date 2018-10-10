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
    String query = "select * from dispatch_details where stud_id = '" + stud_id + "'";
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
                        <h1 style="text-align: center;">Update Dispatch Documents Records</h1>
            <form method="post" action="updateDispatch.jsp" class="StudForm">
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
                    </label>
                </div>
                <div class="col-1">
                    <label class="labelClassHead">Essentials
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        ID Card: 
                        <%if(rs.getString(3).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="id_card">
                            <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(3).equals("dispatched")){%>
                        <input value="<%=rs.getString(3)%>" disabled>
                        <input type="hidden" name="id_card" value="<%=rs.getString(3)%>">
                        <%}%>
                        
                        <%if(rs.getString(3).equals("NA")){%>
                        <input value="<%=rs.getString(3)%>" disabled>
                        <input type="hidden" name="id_card" value="<%=rs.getString(3)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        Bonafide:
                        <%if(rs.getString(4).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="bonafied">
                            <option value="<%=rs.getString(4)%>"><%=rs.getString(4)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(4).equals("dispatched")){%>
                        <input value="<%=rs.getString(4)%>" disabled>
                        <input type="hidden" name="bonafied" value="<%=rs.getString(4)%>">
                        <%}%>
                        
                        <%if(rs.getString(4).equals("NA")){%>
                        <input value="<%=rs.getString(4)%>" disabled>
                        <input type="hidden" name="bonafied" value="<%=rs.getString(4)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        Tool-FRP: 

                        <%if(rs.getString(5).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="tool_frp">
                            <option value="<%=rs.getString(5)%>"><%=rs.getString(5)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(5).equals("dispatched")){%>
                        <input value="<%=rs.getString(5)%>" disabled>
                        <input type="hidden" name="tool_frp" value="<%=rs.getString(5)%>">
                        <%}%>
                        
                        <%if(rs.getString(5).equals("NA")){%>
                        <input value="<%=rs.getString(5)%>" disabled>
                        <input type="hidden" name="tool_frp" value="<%=rs.getString(5)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        Tool-HDP: 

                        <%if(rs.getString(6).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="tool_hdp">
                            <option value="<%=rs.getString(6)%>"><%=rs.getString(6)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(6).equals("dispatched")){%>
                        <input value="<%=rs.getString(6)%>" disabled>
                        <input type="hidden" name="tool_hdp" value="<%=rs.getString(6)%>">
                        <%}%>
                        
                        <%if(rs.getString(6).equals("NA")){%>
                        <input value="<%=rs.getString(6)%>" disabled>
                        <input type="hidden" name="tool_hdp" value="<%=rs.getString(6)%>">
                        <%}%>
                    </label>
                </div>

                <div class="col-3">
                    <label>
                        Loan Letter:
                        <%if(rs.getString(7).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="loan_letter">
                            <option value="<%=rs.getString(7)%>"><%=rs.getString(7)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(7).equals("dispatched")){%>
                        <input value="<%=rs.getString(7)%>" disabled>
                        <input type="hidden" name="loan_letter" value="<%=rs.getString(7)%>">
                        <%}%>
                        
                        <%if(rs.getString(7).equals("NA")){%>
                        <input value="<%=rs.getString(7)%>" disabled>
                        <input type="hidden" name="loan_letter" value="<%=rs.getString(7)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        Income Tax: 

                        <%if(rs.getString(8).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="income_tax_letter">
                            <option value="<%=rs.getString(8)%>"><%=rs.getString(8)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(8).equals("dispatched")){%>
                        <input value="<%=rs.getString(8)%>" disabled>
                        <input type="hidden" name="income_tax_letter" value="<%=rs.getString(8)%>">
                        <%}%>
                        
                        <%if(rs.getString(8).equals("NA")){%>
                        <input value="<%=rs.getString(8)%>" disabled>
                        <input type="hidden" name="income_tax_letter" value="<%=rs.getString(8)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        e-Kit: 

                        <%if(rs.getString(9).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="e_kit">
                            <option value="<%=rs.getString(9)%>"><%=rs.getString(9)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(9).equals("dispatched")){%>
                        <input value="<%=rs.getString(9)%>" disabled>
                        <input type="hidden" name="e_kit" value="<%=rs.getString(9)%>">
                        <%}%>
                        
                        <%if(rs.getString(9).equals("NA")){%>
                        <input value="<%=rs.getString(9)%>" disabled>
                        <input type="hidden" name="e_kit" value="<%=rs.getString(9)%>">
                        <%}%>
                    </label>
                </div>

                <div class="col-1">
                    <label class="labelClassHead">Books
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        Networking: 
                        <%if(rs.getString(10).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="book_networking">
                            <option value="<%=rs.getString(10)%>"><%=rs.getString(10)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(10).equals("dispatched")){%>
                        <input value="<%=rs.getString(10)%>" disabled>
                        <input type="hidden" name="book_networking" value="<%=rs.getString(10)%>">
                        <%}%>
                        
                        <%if(rs.getString(10).equals("NA")){%>
                        <input value="<%=rs.getString(10)%>" disabled>
                        <input type="hidden" name="book_networking" value="<%=rs.getString(10)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        Linux:
                        <%if(rs.getString(11).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="book_linux">
                            <option value="<%=rs.getString(11)%>"><%=rs.getString(11)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(11).equals("dispatched")){%>
                        <input value="<%=rs.getString(11)%>" disabled>
                        <input type="hidden" name="book_linux" value="<%=rs.getString(11)%>">
                        <%}%>
                        
                        <%if(rs.getString(11).equals("NA")){%>
                        <input value="<%=rs.getString(11)%>" disabled>
                        <input type="hidden" name="book_linux" value="<%=rs.getString(11)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        CCNA: 

                        <%if(rs.getString(12).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="book_ccna">
                            <option value="<%=rs.getString(12)%>"><%=rs.getString(12)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(12).equals("dispatched")){%>
                        <input value="<%=rs.getString(12)%>" disabled>
                        <input type="hidden" name="book_ccna" value="<%=rs.getString(12)%>">
                        <%}%>
                        
                        <%if(rs.getString(12).equals("NA")){%>
                        <input value="<%=rs.getString(12)%>" disabled>
                        <input type="hidden" name="book_ccna" value="<%=rs.getString(12)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        Windows Server: 

                        <%if(rs.getString(13).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="book_winserver">
                            <option value="<%=rs.getString(13)%>"><%=rs.getString(13)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(13).equals("dispatched")){%>
                        <input value="<%=rs.getString(13)%>" disabled>
                        <input type="hidden" name="book_winserver" value="<%=rs.getString(13)%>">
                        <%}%>
                        
                        <%if(rs.getString(13).equals("NA")){%>
                        <input value="<%=rs.getString(13)%>" disabled>
                        <input type="hidden" name="book_winserver" value="<%=rs.getString(13)%>">
                        <%}%>
                    </label>
                </div>

                <div class="col-3">
                    <label>
                        Hardware:
                        <%if(rs.getString(14).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="book_hardware">
                            <option value="<%=rs.getString(14)%>"><%=rs.getString(14)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(14).equals("dispatched")){%>
                        <input value="<%=rs.getString(14)%>" disabled>
                        <input type="hidden" name="book_hardware" value="<%=rs.getString(14)%>">
                        <%}%>
                        
                        <%if(rs.getString(14).equals("NA")){%>
                        <input value="<%=rs.getString(14)%>" disabled>
                        <input type="hidden" name="book_hardware" value="<%=rs.getString(14)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-3">
                    <label>
                        Windows 10: 

                        <%if(rs.getString(15).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="book_win10">
                            <option value="<%=rs.getString(15)%>"><%=rs.getString(15)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(15).equals("dispatched")){%>
                        <input value="<%=rs.getString(15)%>" disabled>
                        <input type="hidden" name="book_win10" value="<%=rs.getString(15)%>">
                        <%}%>
                        
                        <%if(rs.getString(15).equals("NA")){%>
                        <input value="<%=rs.getString(15)%>" disabled>
                        <input type="hidden" name="book_win10" value="<%=rs.getString(15)%>">
                        <%}%>
                    </label>
                </div>  

                <div class="col-1">
                    <label class="labelClassHead">Certificates
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        Diploma: 
                        <%if(rs.getString(16).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="diploma">
                            <option value="<%=rs.getString(16)%>"><%=rs.getString(16)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(16).equals("dispatched")){%>
                        <input value="<%=rs.getString(16)%>" disabled>
                        <input type="hidden" name="diploma" value="<%=rs.getString(16)%>">
                        <%}%>
                        
                        <%if(rs.getString(16).equals("NA")){%>
                        <input value="<%=rs.getString(16)%>" disabled>
                        <input type="hidden" name="diploma" value="<%=rs.getString(16)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        Networking:
                        <%if(rs.getString(17).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_networking">
                            <option value="<%=rs.getString(17)%>"><%=rs.getString(17)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(17).equals("dispatched")){%>
                        <input value="<%=rs.getString(17)%>" disabled>
                        <input type="hidden" name="certificate_networking" value="<%=rs.getString(17)%>">
                        <%}%>
                        
                        <%if(rs.getString(17).equals("NA")){%>
                        <input value="<%=rs.getString(17)%>" disabled>
                        <input type="hidden" name="certificate_networking" value="<%=rs.getString(17)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        CCNA: 

                        <%if(rs.getString(18).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_ccna">
                            <option value="<%=rs.getString(18)%>"><%=rs.getString(18)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(18).equals("dispatched")){%>
                        <input value="<%=rs.getString(18)%>" disabled>
                        <input type="hidden" name="certificate_ccna" value="<%=rs.getString(18)%>">
                        <%}%>
                        
                        <%if(rs.getString(18).equals("NA")){%>
                        <input value="<%=rs.getString(18)%>" disabled>
                        <input type="hidden" name="certificate_ccna" value="<%=rs.getString(18)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        Linux: 

                        <%if(rs.getString(19).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_linux">
                            <option value="<%=rs.getString(19)%>"><%=rs.getString(19)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(19).equals("dispatched")){%>
                        <input value="<%=rs.getString(19)%>" disabled>
                        <input type="hidden" name="certificate_linux" value="<%=rs.getString(19)%>">
                        <%}%>
                        
                        <%if(rs.getString(19).equals("NA")){%>
                        <input value="<%=rs.getString(19)%>" disabled>
                        <input type="hidden" name="certificate_linux" value="<%=rs.getString(19)%>">
                        <%}%>
                    </label>
                </div>

                <div class="col-4">
                    <label>
                        Windows Server:
                        <%if(rs.getString(20).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_winserver">
                            <option value="<%=rs.getString(20)%>"><%=rs.getString(20)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(20).equals("dispatched")){%>
                        <input value="<%=rs.getString(20)%>" disabled>
                        <input type="hidden" name="certificate_winserver" value="<%=rs.getString(20)%>">
                        <%}%>
                        
                        <%if(rs.getString(20).equals("NA")){%>
                        <input value="<%=rs.getString(20)%>" disabled>
                        <input type="hidden" name="certificate_winserver" value="<%=rs.getString(20)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        PHP: 

                        <%if(rs.getString(21).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_php">
                            <option value="<%=rs.getString(21)%>"><%=rs.getString(21)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(21).equals("dispatched")){%>
                        <input value="<%=rs.getString(21)%>" disabled>
                        <input type="hidden" name="certificate_php" value="<%=rs.getString(21)%>">
                        <%}%>
                        
                        <%if(rs.getString(21).equals("NA")){%>
                        <input value="<%=rs.getString(21)%>" disabled>
                        <input type="hidden" name="certificate_php" value="<%=rs.getString(21)%>">
                        <%}%>
                    </label>
                </div>  

                <div class="col-4">
                    <label>
                        Hardware & Networking:
                        <%if(rs.getString(22).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_hardware_network">
                            <option value="<%=rs.getString(22)%>"><%=rs.getString(22)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(22).equals("dispatched")){%>
                        <input value="<%=rs.getString(22)%>" disabled>
                        <input type="hidden" name="certificate_hardware_network" value="<%=rs.getString(22)%>">
                        <%}%>
                        
                        <%if(rs.getString(22).equals("NA")){%>
                        <input value="<%=rs.getString(22)%>" disabled>
                        <input type="hidden" name="certificate_hardware_network" value="<%=rs.getString(22)%>">
                        <%}%>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                        MCSE: 
                        <%if(rs.getString(23).equals("not_dispatched")){%>
                        <select tabindex="1" id="id_card" name="certificate_mcse">
                            <option value="<%=rs.getString(23)%>"><%=rs.getString(23)%></option>
                            <option value="dispatched">dispatched</option>
                        </select>
                        <%}%>
                        
                        <%if(rs.getString(23).equals("dispatched")){%>
                        <input value="<%=rs.getString(23)%>" disabled>
                        <input type="hidden" name="certificate_mcse" value="<%=rs.getString(23)%>">
                        <%}%>
                        
                        <%if(rs.getString(23).equals("NA")){%>
                        <input value="<%=rs.getString(23)%>" disabled>
                        <input type="hidden" name="certificate_mcse" value="<%=rs.getString(23)%>">
                        <%}%>
                    </label>
                </div>  
<%}%>

                <div class="col-submit">
                    <button class="submitbtn" tabindex="32">Save</button>
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
