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
            String stud_name = request.getParameter("stud_name");
            String id_card = request.getParameter("id_card");
            String bonafied = request.getParameter("bonafied");
            String tool_frp = request.getParameter("tool_frp");
            String tool_hdp = request.getParameter("tool_hdp");
            String loan_letter = request.getParameter("loan_letter");
            String income_tax_letter = request.getParameter("income_tax_letter");
            String e_kit = request.getParameter("e_kit");
            String book_networking = request.getParameter("book_networking");
            String book_linux = request.getParameter("book_linux");
            String book_ccna = request.getParameter("book_ccna");
            String book_winserver = request.getParameter("book_winserver");
            String book_hardware = request.getParameter("book_hardware");
            String book_win10 = request.getParameter("book_win10");
            String diploma = request.getParameter("diploma");
            String certificate_networking = request.getParameter("certificate_networking");
            String certificate_ccna = request.getParameter("certificate_ccna");
            String certificate_linux = request.getParameter("certificate_linux");
            String certificate_winserver = request.getParameter("certificate_winserver");
            String certificate_php = request.getParameter("certificate_php");
            String certificate_hardware_network = request.getParameter("certificate_hardware_network");
            String certificate_mcse = request.getParameter("certificate_mcse");
            try {
                DatabaseConfig.connectDB();
                
                Statement st = DatabaseConfig.conn.createStatement();
                
                st.executeUpdate("update dispatch_details set stud_id='" + stud_id + "',stud_name='" + stud_name + "',id_card='" + id_card + "',bonafied='" + bonafied + "', tool_frp='" + tool_frp + "',tool_hdp='" + tool_hdp + "', loan_letter='" + loan_letter + "',income_tax_letter='" + income_tax_letter + "',e_kit='" + e_kit + "',book_networking='" + book_networking + "',book_linux='" + book_linux + "',book_ccna='" + book_ccna + "',book_winserver='" + book_winserver + "',book_hardware='" + book_hardware + "',book_win10='" + book_win10 + "',diploma='" + diploma + "',certificate_networking='" + certificate_networking + "',certificate_ccna='" + certificate_ccna + "',certificate_linux='" + certificate_linux + "',certificate_winserver='" + certificate_winserver + "',certificate_php='" + certificate_php + "',certificate_hardware_network='" + certificate_hardware_network + "',certificate_mcse='" + certificate_mcse + "' where stud_id='" + stud_id + "'");
                response.sendRedirect("searchStudent.jsp");
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
    </body>
</html>