<%@page import="com.dbconfig.DatabaseConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            String stud_id = request.getParameter("stud_id");
            String stud_batch_timing = request.getParameter("stud_batch_timing");
            String stud_mobile = request.getParameter("stud_mobile");
            String stud_email = request.getParameter("stud_email");
            String stud_father_mobile = request.getParameter("stud_father_mobile");
            String stud_result_mode_details = request.getParameter("stud_result_mode_details");
            try {
                DatabaseConfig.connectDB();
                
                Statement st = DatabaseConfig.conn.createStatement();
                
                
                int i = st.executeUpdate("update regis_form set stud_batch_timing='" + stud_batch_timing + "',stud_mobile='" + stud_mobile + "',stud_email='" + stud_email + "',stud_father_mobile='" + stud_father_mobile + "', stud_result_mode_details='" + stud_result_mode_details + "' where stud_id='" + stud_id + "'");;
                System.out.println(i);
                response.sendRedirect("searchStudent.jsp");
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
    </body>
</html>