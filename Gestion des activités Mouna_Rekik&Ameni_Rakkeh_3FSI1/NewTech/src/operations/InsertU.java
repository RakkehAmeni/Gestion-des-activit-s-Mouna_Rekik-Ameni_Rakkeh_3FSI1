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
import entity.Utilisateur;

/**
 * Servlet implementation class InsertU
 */
@WebServlet("/InsertU")
public class InsertU extends HttpServlet {
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
			String pw = request.getParameter("pw");
			

					
			ps = con.prepareStatement("insert into utilisateur(login,password) values (?,?)"); 
	        
	       
	        ps.setString(1, nom);
	        ps.setString(2, pw);
	        
	        int i = ps.executeUpdate();
	        if (i>0) {
	        	Utilisateur d = new Utilisateur();
	        	
	        	d.setLogin(nom);
	        	d.setPassword(pw);
	        	request.setAttribute("user", d);
	    		request.getRequestDispatcher("/insertionU.jsp").forward(request, response);

	        }
	        else {
	        	out.println("erreur d'insertion");
	    		request.getRequestDispatcher("/gestionDirection.jsp").include(request, response);

	        }
		 
		 } 
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
	}

}
