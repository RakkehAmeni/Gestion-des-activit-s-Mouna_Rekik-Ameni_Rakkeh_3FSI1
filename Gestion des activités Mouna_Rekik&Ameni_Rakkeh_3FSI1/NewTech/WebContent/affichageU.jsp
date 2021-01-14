<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, entity.Utilisateur" %>    
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
List <Utilisateur> Liste = (List<Utilisateur>) request.getAttribute("listeU");
%>
<div class="container ">

<table class="table">
<caption style="color:#011f4e; ">La Liste des utilisateurs</caption>
<thead class="thead-dark">
  <tr>
    <th scope="col"> Code  </th>
    <th scope="col"> Login   </th>
    <th scope="col"> Password </th>
  </tr>
</thead>
<% for (Utilisateur u : Liste){ %>
	<tr>
	<td> <%= u.getCode()   %> </td>
	<td> <%= u.getLogin()    %> </td>
	<td> <%= u.getPassword() %> </td>
	
	</tr>
<%	
}
%>

</table>
</div>
</body>

<%@ include file="footer.jsp" %>
</html>