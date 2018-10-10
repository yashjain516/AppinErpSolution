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
            String hardware = request.getParameter("hardware");
            String networking = request.getParameter("networking");
            String win_10 = request.getParameter("win_10");
            String win_server = request.getParameter("win_server");
            String ccna = request.getParameter("ccna");
            String linux_security = request.getParameter("linux_security");
            String win_security = request.getParameter("win_security");
            String linux = request.getParameter("linux");
            String ccna_security = request.getParameter("ccna_security");
            String network_security = request.getParameter("network_security");
            String wireless_security = request.getParameter("wireless_security");
            String php = request.getParameter("php");
            String web_security = request.getParameter("web_security");
            String cloud = request.getParameter("cloud");
            String web_development = request.getParameter("web_development");
            String digital_marketing = request.getParameter("digital_marketing");
            String iot = request.getParameter("iot");
            try {
                DatabaseConfig.connectDB();
                
                Statement st = DatabaseConfig.conn.createStatement();
                st.executeUpdate("update ntech_technology set stud_id='" + stud_id + "',stud_name='" + stud_name + "',hardware='" + hardware + "',networking='" + networking + "', win_10='" + win_10 + "',win_server='" + win_server + "', ccna='" + ccna + "',linux_security='" + linux_security + "',win_security='" + win_security + "',linux='" + linux + "',ccna_security='" + ccna_security + "',network_security='" + network_security + "',wireless_security='" + wireless_security + "',php='" + php + "',web_security='" + web_security + "',cloud='" + cloud + "',web_development='" + web_development + "',digital_marketing='" + digital_marketing + "',iot='" + iot + "' where stud_id='" + stud_id + "'");
                
                response.sendRedirect("searchStudent.jsp");
            } catch (SQLException e) {
                System.out.println(e);
            }
        %>
    </body>
</html>