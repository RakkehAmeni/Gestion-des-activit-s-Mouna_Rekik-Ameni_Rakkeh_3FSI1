package operations;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DataBase;
import entity.Activite;

/**
 * Servlet implementation class AjoutAct
 */
@WebServlet("/AjoutAct")
public class AjoutAct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		PreparedStatement ps;
		Connection con;
		
		
		
		try {
			con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
			
			
			String nom = request.getParameter("nom");
			String si = request.getParameter("si");
			String sf = request.getParameter("sf");
			String p = request.getParameter("p");
			String etat = request.getParameter("customRadioInline1");
			int annee = Integer.parseInt(request.getParameter("annee"));
			int part = Integer.parseInt(request.getParameter("part"));
			int theme = Integer.parseInt(request.getParameter("theme"));
			int ind = Integer.parseInt(request.getParameter("ind"));
			ps = con.prepareStatement("insert into activité(Année,intitulé,indicateur,Source_information,Période,Source_financière,Etat,direction,thème ,partenaire) values (?,?,?,?,?,?,?,?,?,?)"); 
	        
			ps.setInt(1, annee);
	        ps.setString(2, nom);
	        ps.setInt(3, ind);
	        ps.setString(4, si);
	        ps.setString(5,p);
	        ps.setString(6,sf);
	        ps.setString(7,etat);
	        ps.setInt(8, 1);
	        ps.setInt(9, theme);
	        ps.setInt(10, part);
	        int i = ps.executeUpdate();
	        if (i>0) {
	        	Activite A = new Activite();
	        	
	        	A.setNom(nom);
	        	A.setAnnee(annee);
	        	request.setAttribute("act", A);
	    		request.getRequestDispatcher("/ajoutActivite.jsp").forward(request, response);

	        }
	        else {
	        	out.println("erreur d'insertion");
	    		request.getRequestDispatcher("/ajout.jsp").include(request, response);

	        }
		 
		 } 
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
	}

}
