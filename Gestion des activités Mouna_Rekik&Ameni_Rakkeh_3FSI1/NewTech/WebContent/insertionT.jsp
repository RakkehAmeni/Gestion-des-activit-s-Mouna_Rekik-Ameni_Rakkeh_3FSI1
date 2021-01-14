<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="entity.Thème" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Thème T = (Thème) request.getAttribute("thème");
out.println("Nom: "+T.getNom() + " a été ajouté avec succès");
%>
</body>
</html>