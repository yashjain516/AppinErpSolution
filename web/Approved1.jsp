<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<%@ page import="java.sql.*, java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date" %>
<% String s = request.getParameter("Id"); 
DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
String formattedDate = df.format(new Date());
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appin_accounts","root","bhopal");  
PreparedStatement ps1=con.prepareStatement("update technology_upgradation set status='Approved', approveddate=? where refrence_id= '"+s+"'");  
ps1.setString(1,formattedDate);
ps1.executeUpdate();
}
catch(Exception e){}
response.sendRedirect("Technology_Approval.jsp"); 
%>
</body>
</html>