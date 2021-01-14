package entity;

public class Activite {
private int id, annee,indicateur,theme,partenaire,direction;
private String nom,si,sf,periode,etat;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getAnnee() {
	return annee;
}
public void setAnnee(int annee) {
	this.annee = annee;
}
public int getIndicateur() {
	return indicateur;
}
public void setIndicateur(int indicateur) {
	this.indicateur = indicateur;
}
public int getTheme() {
	return theme;
}
public void setTheme(int theme) {
	this.theme = theme;
}
public int getPartenaire() {
	return partenaire;
}
public void setPartenaire(int partenaire) {
	this.partenaire = partenaire;
}
public int getDirection() {
	return direction;
}
public void setDirection(int direction) {
	this.direction = direction;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getSi() {
	return si;
}
public void setSi(String si) {
	this.si = si;
}
public String getSf() {
	return sf;
}
public void setSf(String sf) {
	this.sf = sf;
}
public String getPeriode() {
	return periode;
}
public void setPeriode(String periode) {
	this.periode = periode;
}
public String getEtat() {
	return etat;
}
public void setEtat(String etat) {
	this.etat = etat;
}
}