package operations;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DataBase;

/**
 * Servlet implementation class Aff
 */
@WebServlet("/Aff")
public class Aff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Aff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		ResultSet rs=null;
		
		try {
			con = DataBase.creerCon();
			PreparedStatement ps = con.prepareStatement("select * from direction");       
			rs = ps.executeQuery(); 
			        
	        
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}	
        catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		request.setAttribute("resultat", rs);
        request.getRequestDispatcher("/affich.jsp").forward(request, response);
	}

}
