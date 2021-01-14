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


/**
 * Servlet implementation class Suppr
 */
@WebServlet("/Suppr")
public class Suppr extends HttpServlet {
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
			  int id = Integer.parseInt(request.getParameter("code"));
			  ps = con.prepareStatement("DELETE FROM direction WHERE Code_direction = " + id); 
			  int i = ps.executeUpdate();
		        if (i>0) {
		        	out.println("L'enregistrement numéro "+ id +" a été supprimé avec succés. ");
		        }
		        else {
		        	out.println("erreur de suppresion");
		    		

		        }
			  
		}

		  catch (ClassNotFoundException e) {
				 System.err.println(e.getMessage());
				 } catch (SQLException e) {
					 System.err.println(e.getMessage());

				}
		  }
		
	}