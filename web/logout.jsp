<%-- 
    Document   : logout
    Created on : Aug 28, 2018, 10:52:08 AM
    Author     : YASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("currentID");
            session.invalidate();
            response.sendRedirect("login.html");
        %>
    </body>
</html>
