<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, entity.Direction" %>    
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
List <Direction> Liste = (List<Direction>) request.getAttribute("listeD");
%>
<div class="container ">

<table class="table">
<caption style="color:#011f4e; ">La Liste des directions</caption>
<thead class="thead-dark">
  <tr>
    <th scope="col"> Code  </th>
    <th scope="col"> Nom   </th>
    <th scope="col"> Email </th>
  </tr>
</thead>
<% for (Direction d : Liste){ %>
	<tr>
	<td> <%= d.getCode()   %> </td>
	<td> <%= d.getNom()    %> </td>
	<td> <%= d.getEmail() %> </td>
	
	</tr>
<%	
}
%>

</table>
</div>
</body>

<%@ include file="footer.jsp" %>
</html>