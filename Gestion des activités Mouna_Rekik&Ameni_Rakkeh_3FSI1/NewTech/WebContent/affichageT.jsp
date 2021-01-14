<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, entity.Thème" %>    
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
List <Thème> Liste = (List<Thème>) request.getAttribute("listeT");
%>
<div class="container ">

<table class="table">
<caption style="color:#011f4e; ">La Liste des thèmes</caption>
<thead class="thead-dark">
  <tr>
    <th scope="col"> Code  </th>
    <th scope="col"> Nom </th>
  
  </tr>
</thead>
<% for (Thème t : Liste){ %>
	<tr>
	<td> <%= t.getCode()   %> </td>
	<td> <%= t.getNom()    %> </td>
	
	
	</tr>
<%	
}
%>

</table>
</div>
</body>

<%@ include file="footer.jsp" %>
</html>