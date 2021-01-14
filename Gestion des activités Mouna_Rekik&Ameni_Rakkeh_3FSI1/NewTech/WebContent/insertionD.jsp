<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="entity.Direction" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Direction D = (Direction) request.getAttribute("direction");
out.println("Nom: "+D.getNom()+" Email: "+D.getEmail()+" a été ajouté avec succès");
%>
</body>
</html>