<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="entity.Activite" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Activite A = (Activite) request.getAttribute("act");
out.println("Activite: "+A.getNom()+" de l'ann�e "+A.getAnnee()+" a �t� ajout� avec succ�s");
%>
</body>
</html>