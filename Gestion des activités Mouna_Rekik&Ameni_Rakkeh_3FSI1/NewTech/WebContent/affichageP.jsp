<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, entity.Partenaire" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>affichage</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/affich.css" />
</head>
<body>
<%@ include file="header.jsp" %>

<%
List <Partenaire> Liste = (List<Partenaire>) request.getAttribute("listeP");
%>
<div class="container ">

<table class="table">
<caption style="color:#011f4e; ">La Liste des partenaires</caption>
<thead class="thead-dark">
  <tr>
    <th scope="col"> Code  </th>
    <th scope="col"> Nom   </th>
    <th scope="col"> Email </th>
  </tr>
</thead>
<% for (Partenaire p : Liste){ %>
	<tr>
	<td> <%= p.getCode()   %> </td>
	<td> <%= p.getNom()    %> </td>
	<td> <%= p.getEmail() %> </td>
	
	</tr>
<%	
}
%>

</table>
</div>
</body>

<%@ include file="footer.jsp" %>
</html>