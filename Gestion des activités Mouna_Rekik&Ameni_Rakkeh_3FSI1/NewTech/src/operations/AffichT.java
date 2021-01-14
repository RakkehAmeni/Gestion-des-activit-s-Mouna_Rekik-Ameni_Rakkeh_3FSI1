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
import entity.Thème;

/**
 * Servlet implementation class AffichT
 */
@WebServlet("/AffichT")
public class AffichT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AffichT() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement ps;
		Connection con;
		
		List <Thème> liste = new ArrayList<Thème>();
		
		try {
			con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
					
		  ps = con.prepareStatement("select * from thème"); 
		  ResultSet rs = ps.executeQuery();
		  
		  while (rs.next()) { 
			  int id = rs.getInt("Code_thème"); 
			  String name = rs.getString("nom_thème"); 
			 
			  
			  Thème t = new Thème();
			  t.setCode(id);
			  t.setNom(name);
			  
			  
			  liste.add(t);  
		 }
		}
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
		
		request.setAttribute("listeT", liste);
		request.getRequestDispatcher("/affichageT.jsp").forward(request, response);

	}

}
