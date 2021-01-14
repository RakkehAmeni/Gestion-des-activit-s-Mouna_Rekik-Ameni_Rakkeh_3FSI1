package operations;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DataBase;
import entity.Activite;

/**
 * Servlet implementation class AffichAct
 */
@WebServlet("/AffichAct")
public class AffichAct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement ps;
		Connection con;
		
		List <Activite> liste = new ArrayList<Activite>();
		
		try {
			con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
					
		  ps = con.prepareStatement("select * from activité"); 
		  ResultSet rs = ps.executeQuery();
		  
		  while (rs.next()) { 
			  int code = rs.getInt("Code_activité");
			  int annee = rs.getInt("Année"); 
			  String name = rs.getString("intitulé"); 
			  int ind = rs.getInt("indicateur");
			  String si =rs.getString("Source_information");
			  String p =rs.getString("Période");
			  String sf =rs.getString("Source_financière");
			  String etat =rs.getString("Etat");
			  int d = rs.getInt("direction");
			  int t = rs.getInt("thème");
			  int part = rs.getInt("partenaire");
			  Activite a = new Activite();
			  a.setId(code);
			  a.setAnnee(annee);
			  a.setNom(name);
			  a.setIndicateur(ind);
			  a.setSi(si);
			  a.setPeriode(p);
			  a.setSf(sf);
			  a.setEtat(etat);
			  a.setDirection(d);
			  a.setTheme(t);
			  a.setPartenaire(part);
			  liste.add(a);  
		 }
		}
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
		
		request.setAttribute("listeA", liste);
		request.getRequestDispatcher("/AffichageA.jsp").forward(request, response);

	}

}
