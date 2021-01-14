<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion utilisateurs</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style2.css" />

</head>
<body>
<%@ include file="header.jsp" %>



 <div class="row">
			<div class="col-5 mx-auto">
		
				<div class="myform form " style="width:700px;">
				 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h3>Utilisateur</h3>
						 </div>
					</div>
                
                   <form action="" method="post" class="form1" >
  
  <div class="form-group row">
    <label for="code" class="col-3 col-form-label">Code</label>
    <div class="form-inline">
      <input type="number" name="code" class="form-control"  placeholder="saisir code utilisateur" style="width:250px; margin-right:10px; margin-left:-50px;  margin-top:-4px;"/>
      <button type="submit" formaction="SupprU" class="btn btn-dark"  style=" margin-top:-6px;">Supprimer</button>
    </div>
    </div>
  
    <div class="form-group row">
    <label for="nom" class="col-3 col-form-label">Utilsateur</label>
    <div>
      <input type="text" class="form-control" name="nom" placeholder="saisir utilisateur" style="width:250px; margin-right:10px; margin-left:-50px;  margin-top:-4px;"/>
    </div>
  </div>
  <div class="form-group row">
    <label for="pw" class="col-3 col-form-label" >Mot de passe</label>
    <div >
      <input type="password"  name="pw" class="form-control" placeholder="saisir mot de passe" style="width:250px; margin-right:10px; margin-left:-50px;  margin-top:-4px;"/>
      
    </div>
  </div>
  <br>
  

<div class="form-inline" style="margin-left:40px;">
  
  <button type="submit" formaction="AffichU"  class="btn btn-dark" style="margin-right:10px;" >Afficher</button>
 
  <button type="submit" formaction="InsertU" class="btn btn-dark" style="margin-right:10px;" >Ajouter</button>
  
    <button type="submit" class="btn btn-dark" style="margin-right:10px;" >Modifier</button>
    
  

</div>
	</form>	
			</div>
			</div>
			  
		</div>


<%@ include file="footer.jsp" %>
</body>
</html>