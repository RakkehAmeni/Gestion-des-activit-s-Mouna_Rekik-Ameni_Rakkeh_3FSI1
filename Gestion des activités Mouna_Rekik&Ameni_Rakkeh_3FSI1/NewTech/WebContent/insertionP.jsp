<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="entity.Partenaire" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Partenaire P = (Partenaire) request.getAttribute("partenaire");
out.println("Nom: "+P.getNom()+" Email: "+P.getEmail()+" a été ajouté avec succès");
%>
</body>
</html>