<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="entity.Th�me" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Th�me T = (Th�me) request.getAttribute("th�me");
out.println("Nom: "+T.getNom() + " a �t� ajout� avec succ�s");
%>
</body>
</html>