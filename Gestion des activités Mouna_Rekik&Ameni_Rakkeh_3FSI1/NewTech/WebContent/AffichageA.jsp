<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, entity.Activite" %>    
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
List <Activite> Liste = (List<Activite>) request.getAttribute("listeA");
%>
<div class="container ">

<table class="table">
<caption style="color:#011f4e; ">La Liste des activiés</caption>
<thead class="thead-dark">
  <tr>
    <th scope="col"> Code  </th>
    <th scope="col"> Année   </th>
    <th scope="col"> Nom </th>
     <th scope="col"> Indicateur </th>
      <th scope="col"> Source information </th>
       <th scope="col"> Période </th>
       <th scope="col"> Source financière </th>
       <th scope="col"> Etat </th>
       <th scope="col"> Direction </th>
       <th scope="col"> Thème </th>
       <th scope="col"> Partenaire </th>
  </tr>
</thead>
<% for (Activite a : Liste){ %>
	<tr>
	<td> <%= a.getId() %> </td>
	<td> <%= a.getAnnee()    %> </td>
	<td> <%= a.getNom() %> </td>
	<td> <%= a.getIndicateur() %> </td>
	<td> <%= a.getSi() %> </td>
	<td> <%= a.getPeriode() %> </td>
	<td> <%= a.getSf() %> </td>
	<td> <%= a.getEtat() %> </td>
	<td> <%=  a.getDirection() %> </td>
	<td> <%= a.getTheme() %> </td>
	<td> <%= a.getPartenaire() %> </td>
	</tr>
<%	
}
%>

</table>
</div>
</body>

<%@ include file="footer.jsp" %>
</html>