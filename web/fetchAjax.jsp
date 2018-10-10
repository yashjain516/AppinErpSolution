<%-- 
    Document   : fetchAjax
    Created on : Aug 30, 2018, 12:52:38 PM
    Author     : YASH
--%>

<%@page import="com.dbconfig.DatabaseConfig"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
                font-size: large;
                color:blue;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <%
            String urole = (String) session.getAttribute("userRole");
            String s = request.getParameter("val");
            if (s == null || s.trim().equals("")) {
                out.print("Enter Student Name to search...");
            } else {
                //int id = Integer.parseInt(s);
                //out.print(s);
                try {
                    DatabaseConfig.connectDB();

                    PreparedStatement ps = DatabaseConfig.conn.prepareStatement("select * from dispatch_details where stud_name like '" + s + "%'");
                    //ps.setString(1, s);
                    ResultSet rs = ps.executeQuery();
                    //out.println(rs.getString(1) + " " + rs.getString(2)); 
        %>
        <form method="get" name="form">
            <table id="customers">
                <thead>
                    <tr>
                        <th style="width: 14.28%;">Student Name</th>
                        <th style="width: 14.28%;">Student ID</th>
                        <th style="width: 14.28%;">Profile View</th>
                            <%
                                if (urole.equals("mgmt")) {%>
                        <th style="width: 14.28%;">Dispatching Details</th>
                        <th style="width: 14.28%;">Profile Update</th>
                        <th style="width: 14.28%;">Technology Map</th>
                            <%}
                            %>
                        <th style="width: 14.28%;">Upload files</th>
                    </tr>
                </thead>
                <%
                    while (rs.next()) {
                %>
                <tbody>
                    <tr>
                        <td style="width: 14.28%;"><%=rs.getString(2)%></td>
                        <td style="width: 14.28%;"><%=rs.getString(1)%></td>
                        <!--<td><input type="button" name="edit" value="See details"  onclick="editRecord(<%=rs.getString(1)%>);"  ></td>-->

                        <td style="width: 14.28%;"><a href="profileStud.jsp?id=<%=rs.getString(1)%>">Click here</a></td>
                        <%
                            if (urole.equals("mgmt")) {%>
                        <td style="width: 14.28%;"><a href="viewDispatch.jsp?id=<%=rs.getString(1)%>">Click here</a></td>
                        <td style="width: 14.28%;"><a href="updateStudData.jsp?id=<%=rs.getString(1)%>">Click here</a></td>

                        <%
                            if (rs.getString(1).startsWith("T")) {

                        %>
                        <td style="width: 14.28%;"><a href="viewTechTechnology.jsp?id=<%=rs.getString(1)%>">Click here</a></td>
                        <%}%>

                        <%
                            if (rs.getString(1).startsWith("NT")) {

                        %>
                        <td style="width: 14.28%;"><a href="viewNontechTechnology.jsp?id=<%=rs.getString(1)%>">Click here</a></td>
                        <%}%>
                        
                        
                        <%}
                        %>
                        <td style="width: 14.28%;"><a href="uploadFilesSeparate.jsp?id=<%=rs.getString(1)%>">Click here</a></td>
                    </tr>
                </tbody>
                <%}%>
            </table>
        </form>
        <%
                    //request.setAttribute("fetched", rs);
                    //response.sendRedirect("searchStudent.jsp");
                    DatabaseConfig.conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        %>  
    </body>
</html>
