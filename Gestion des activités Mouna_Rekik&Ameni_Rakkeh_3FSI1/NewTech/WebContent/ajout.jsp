<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Ajout activités</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style3.css" />

</head>
<body>
<%@ include file="header.jsp" %>



 <div class="row">
			<div class="col-5 mx-auto">
		
				<div class="myform form ">
				 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h3>Ajout d'activité</h3>
						 </div>
					</div>
                  
<form class="form1"  method ="post" action="AjoutAct">
  <div class="f1">
  <div class="form-group row">
    <label for="nom" class="col-sm-4 col-form-label">Nom</label>
    <div>
      <input type="text" class="form-control" name="nom" placeholder="saisir nom activité" style="width:250px; margin-right:10px; margin-left:-30px;   margin-top:-4px;"/>
    </div>
  </div>
  
    <div class="form-group row">
    <label for="annee" class="col-sm-4 col-form-label">Année</label>
    <div>
      <input type="number" class="form-control" name="annee" placeholder="saisir année" style="width:250px; margin-right:10px; margin-left:-30px;  margin-top:-4px;"/>
    </div>
  </div>
   <div class="form-group row">
    <label for="ind" class="col-sm-4 col-form-label">Indicateur</label>
    <div>
      <input type="number" class="form-control" name="ind" placeholder="saisir indicateur" style="width:250px; margin-right:10px; margin-left:-30px;  margin-top:-4px;"/>
    </div>
  </div>
   <div class="form-group row">
    <label for="theme" class="col-sm-4 col-form-label">Thème</label>
    <div>
      <input type="number" class="form-control" name="theme" placeholder="saisir code thème" style="width:250px; margin-right:10px; margin-left:-30px ;margin-top:-4px; "/>
    </div>
  </div>
   <div class="form-group row">
    <label for="si" class="col-sm-4 col-form-label">Source information</label>
    <div>
      <input type="text" class="form-control" name="si" placeholder="saisir source informartion" style="width:250px; margin-right:10px; margin-left:-30px ;  margin-top:-4px;"/>
    </div>
  </div>
   <div class="form-group row">
    <label for="sf" class="col-sm-4 col-form-label">Source financière</label>
    <div>
      <input type="text" class="form-control" name="sf" placeholder="saisir source financière" style="width:250px; margin-right:10px; margin-left:-30px;  margin-top:-4px;"/>
    </div>
  </div>
  <div class="form-group row">
    <label for="p" class="col-sm-4 col-form-label" >Période</label>
    <div >
      <input type="text"  name="p" class="form-control" placeholder="saisir la période" style="width:250px; margin-right:10px; margin-left:-30px;  margin-top:-4px;"/>
    </div>
  </div>
  <div class="form-group row">
    <label for="part" class="col-sm-4 col-form-label" >Partenaire</label>
    <div >
      <input type="number"  name="part" class="form-control" placeholder="saisir code partenaire" style="width:250px; margin-right:10px; margin-left:-30px;  margin-top:-4px;"/>
    </div>
  </div>
  <div class="form-group row" >
    <label for="etat" class="col-sm-4 col-form-label" >Etat</label>
 <div class="radios" style=" margin-top:10px; margin-left:-30px;">
      <div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline1" name="customRadioInline1" value="en cours" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline1">en cours</label>
</div>
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline2" name="customRadioInline1" value="achevé" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline2">achevé</label>
</div>
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline3" name="customRadioInline1" value="non réalisé" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline3">non réalisé</label>
</div>
</div>
  </div>
  <br>
 <button type="submit"  class="btn btn-dark" style="margin-left:100px;" >Ajouter</button>
 </div>
  </form>
</div>
</div>			  
</div>

<%@ include file="footer.jsp" %>
</body>
</html>