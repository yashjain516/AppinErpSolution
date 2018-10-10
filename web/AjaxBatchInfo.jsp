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
            div.imageLoader {
  -webkit-animation: seconds 1.0s forwards;
  -webkit-animation-iteration-count: 1;
  -webkit-animation-delay: 2s;
  animation: seconds 1.0s forwards;
  animation-iteration-count: 1;
  animation-delay: 2s;
  position: relative;
}
@-webkit-keyframes seconds {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
    left: -9999px; 
  }
}
@keyframes seconds {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
    left: -9999px; 
  }
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

                    PreparedStatement ps = DatabaseConfig.conn.prepareStatement("select * from batch_created where batch_name ='" + s + "'");
                    //ps.setString(1, s);
                    ResultSet rs = ps.executeQuery();
                    //out.println(rs.getString(1) + " " + rs.getString(2));
                    PreparedStatement ps2 = DatabaseConfig.conn.prepareStatement("select stud_id, stud_name, stud_mobile from regis_form where stud_id IN (select stud_id from batch_scheduled where batch_name='" + s + "')");
                    ResultSet rs2 = ps2.executeQuery();
                    while (rs.next()) {
        %>
        <div class="imageLoader"><img src="images/ajax-loader.gif" style="position: relative"/></div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Assign Faculty</label>
                <input type="text" class="form-control" value="<%=rs.getString(4)%>" disabled>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Start date</label>
                <input type="date" class="form-control" value="<%=rs.getString(2)%>" disabled>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Start time</label>
                <input type="time" class="form-control" value="<%=rs.getString(5)%>" disabled>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label>End time</label>
                <input type="time" class="form-control" value="<%=rs.getString(6)%>" disabled>
            </div>
        </div>
        <table class="table table-hover" id="myTable" style="width: 100%;">
            <tr>
                <th scope="col" style="text-align: center;"><strong>Student ID</strong></th>
                <th scope="col" style="text-align: center;"><strong>Student Name</strong></th>
                <th scope="col" style="text-align: center;"><strong>Mobile</strong></th>
                <th scope="col" style="text-align: center;"><strong>Delete</strong></th>
            </tr>
            <%while (rs2.next()) {%>
            <tr>
                <td><%=rs2.getString(1)%></td>
                <td><%=rs2.getString(2)%></td>
                <td><%=rs2.getString(3)%></td>
                <td><a href="<%=rs2.getString(1)%>">Click</a></td>
            </tr>
            <%}%>
        </table>

        <%}
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
