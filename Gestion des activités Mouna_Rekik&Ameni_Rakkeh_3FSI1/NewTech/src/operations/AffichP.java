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
import entity.Partenaire;

/**
 * Servlet implementation class AffichP
 */
@WebServlet("/AffichP")
public class AffichP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AffichP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement ps;
		Connection con;
		List <Partenaire> liste = new ArrayList<Partenaire>();
		
		try {
			con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
					
		  ps = con.prepareStatement("select * from partenaire"); 
		  ResultSet rs = ps.executeQuery();
		  
		  while (rs.next()) { 
			  int id = rs.getInt("Code_partenaire"); 
			  String name = rs.getString("Nom_partenaire"); 
			  String mail = rs.getString("Email");
			  
			  Partenaire p = new Partenaire();
			  p.setCode(id);
			  p.setNom(name);
			  p.setEmail(mail);
			  
			  liste.add(p);  
		 }
		}
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
		
		request.setAttribute("listeP", liste);
		request.getRequestDispatcher("/affichageP.jsp").forward(request, response);

	}

}
