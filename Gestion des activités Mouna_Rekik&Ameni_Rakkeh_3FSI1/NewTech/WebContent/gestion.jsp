<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/gestion.css"/>
</head>
<body>
<%@ include file="header.jsp" %>
<div class ="Container gestion">

<div  class ="row">
<form action="gestionDirection.jsp" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Gestion des Directions</button>

</form>
</div>

<br>
<div  class ="row">

<form action="gestionPartenaire.jsp" method="post">
<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Gestion des Partenaires</button>
</form>
</div>


<br>
<div class ="row">
<form action="gestionThème.jsp" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Gestion des Thèmes</button>

</form>
</div>
<br>
<div class ="row">
<form action="gestionUtilisateur.jsp" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Gestion des Utilisateurs</button>

</form>
</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>