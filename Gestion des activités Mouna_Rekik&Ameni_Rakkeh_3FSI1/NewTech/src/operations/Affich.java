
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
import entity.Direction;

/**
 * Servlet implementation class Affich
 */
@WebServlet("/Affich")
public class Affich extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Affich() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement ps;
		Connection con;
		
		List <Direction> liste = new ArrayList<Direction>();
		
		try {
			con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
					
		  ps = con.prepareStatement("select * from direction"); 
		  ResultSet rs = ps.executeQuery();
		  
		  while (rs.next()) { 
			  int id = rs.getInt("Code_direction"); 
			  String name = rs.getString("nom_direction"); 
			  String mail = rs.getString("Email");
			  
			  Direction d = new Direction();
			  d.setCode(id);
			  d.setNom(name);
			  d.setEmail(mail);
			  
			  liste.add(d);  
		 }
		}
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
		
		request.setAttribute("listeD", liste);
		request.getRequestDispatcher("/affichage.jsp").forward(request, response);

	}

}
