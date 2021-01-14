<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ResultSet  rs = (ResultSet) request.getAttribute("resultat");

while (rs.next()) {
	out.println("code : "+rs.getInt(1));  
	out.println("Nom : "+rs.getString(2));
	out.println("Email : "+rs.getString(3));
	  %> <br>
    
    
<%    
}

%>

</body>
</html>