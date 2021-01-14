<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion Thème</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style2.css" />

</head>
<body>
<%@ include file="header.jsp" %>



 <div class="row">
			<div class="col-5 mx-auto">
		
				<div class="myform form ">
				 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h3>Thème</h3>
						 </div>
					</div>
                  
                   <form action="" method="post" class="form1">
  
  <div class="form-group row">
    <label for="code" class="col-sm-3 col-form-label">Code</label>
    <div class="form-inline">
      <input type="number" name="code" class="form-control"  placeholder="saisir code thème" style="width:250px; margin-right:10px; margin-left:-50px;  margin-top:-4px;"/>
      <button type="submit" formaction="SupprT" class="btn btn-dark"  style=" margin-top:-6px;">Supprimer</button>
    </div>
    </div>
  
    <div class="form-group row">
    <label for="nom" class="col-sm-3 col-form-label">Nom</label>
    <div>
      <input type="text" class="form-control" name="nom" placeholder="saisir nom thème" style="width:250px; margin-right:10px; margin-left:-50px;  margin-top:-4px;"/>
    </div>
  </div>

  <br>
  

<div class="form-inline" style="margin-left:40px;">
  
  <button type="submit" formaction="AffichT" class="btn btn-dark" style="margin-right:10px;" >Afficher</button>
 
  <button type="submit" formaction="InsertT" class="btn btn-dark" style="margin-right:10px;" >Ajouter</button>
  
    <button type="submit" class="btn btn-dark" style="margin-right:10px;" >Modifier</button>
   
  
    
  

</div>
</form>
				</div>
			</div>
			  
		</div>


<%@ include file="footer.jsp" %>
</body>
</html>