<%@page import="com.dbconfig.DatabaseConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            String stud_id = request.getParameter("stud_id");
            String stud_name = request.getParameter("stud_name");
            String networking = request.getParameter("networking");
            System.out.println(networking);
            String ccna = request.getParameter("ccna");
            String linux = request.getParameter("linux");
            String win_server = request.getParameter("win_server");
            String net_security = request.getParameter("net_security");
            String ccna_security = request.getParameter("ccna_security");
            String linux_security = request.getParameter("linux_security");
            String win_security = request.getParameter("win_security");
            String wireless = request.getParameter("wireless");
            String php = request.getParameter("php");
            String web_security = request.getParameter("web_security");
            String python = request.getParameter("python");
            String cloud_aws = request.getParameter("cloud_aws");
            String cloud_api = request.getParameter("cloud_api");
            String iot = request.getParameter("iot");
            String ai = request.getParameter("ai");
            System.out.println("update 1");
            try {
                DatabaseConfig.connectDB();
                
                Statement st = DatabaseConfig.conn.createStatement();
                System.out.println("update 2");
                st.executeUpdate("update tech_technology set stud_id='" + stud_id + "',stud_name='" + stud_name + "',networking='" + networking + "',ccna='" + ccna + "', linux='" + linux + "',win_server='" + win_server + "', net_security='" + net_security + "',ccna_security='" + ccna_security + "',linux_security='" + linux_security + "',win_security='" + win_security + "',wireless='" + wireless + "',php='" + php + "',web_security='" + web_security + "',python='" + python + "',cloud_aws='" + cloud_aws + "',cloud_api='" + cloud_api + "',iot='" + iot + "',ai='" + ai + "' where stud_id='" + stud_id + "'");
                
                response.sendRedirect("searchStudent.jsp");
            } catch (SQLException e) {
                System.out.println(e);
            }
        %>
    </body>
</html>