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
import entity.Th�me;

/**
 * Servlet implementation class InsertT
 */
@WebServlet("/InsertT")
public class InsertT extends HttpServlet {
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
			
			

					
			ps = con.prepareStatement("insert into th�me(nom_th�me) values (?)"); 
	        
	       
	        ps.setString(1, nom);
	        
	        
	        int i = ps.executeUpdate();
	        if (i>0) {
	        	Th�me t = new Th�me();
	        	
	        	t.setNom(nom);
	        	
	        	request.setAttribute("th�me", t);
	    		request.getRequestDispatcher("/insertionT.jsp").forward(request, response);

	        }
	        else {
	        	out.println("erreur d'insertion");
	    		request.getRequestDispatcher("/gestionTh�me.jsp").include(request, response);

	        }
		 
		 } 
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

	}

}
}
