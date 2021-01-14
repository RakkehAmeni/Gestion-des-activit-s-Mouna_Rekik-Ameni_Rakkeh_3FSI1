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
import entity.Utilisateur;

/**
 * Servlet implementation class AffichU1
 */
@WebServlet("/AffichU1")
public class AffichU1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AffichU1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement ps;
		Connection con;
		
		List <Utilisateur> liste = new ArrayList<Utilisateur>();
		
		try {
			con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
					
		  ps = con.prepareStatement("select * from utilisateur"); 
		  ResultSet rs = ps.executeQuery();
		  
		  while (rs.next()) { 
			  int id = rs.getInt("Code_utilisateur"); 
			  String login = rs.getString("login"); 
			  String pw = rs.getString("password");
			  
			  Utilisateur u = new Utilisateur();
			  u.setCode(id);
			  u.setLogin(login);
			  u.setPassword(pw);
			  
			  liste.add(u);  
		 }
		}
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } catch (SQLException e) {
			 System.err.println(e.getMessage());

		}
		
		request.setAttribute("listeU", liste);
		request.getRequestDispatcher("/affichageU1.jsp").forward(request, response);
	}

}
