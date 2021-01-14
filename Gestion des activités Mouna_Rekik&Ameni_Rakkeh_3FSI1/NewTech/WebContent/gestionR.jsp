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
<form action="Affich" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Afficher la liste des directions</button>

</form>
</div>

<br>
<div  class ="row">

<form action="AffichP" method="post">
<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Afficher la liste des partenaires</button>
</form>
</div>


<br>
<div class ="row">
<form action="AffichT" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Afficher la liste des thèmes</button>

</form>
</div>
<br>
<div class ="row">
<form action="AffichU1" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Afficher la liste des utilisateurs</button>

</form>


</div>
<br>
<div class ="row">
<form action="ajout.jsp" method="post">

<button type="submit" class="btn btn-dark btn-lg btn-block" style="width:900px">Ajouter une activité</button>

</form>


</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>