package operations;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.DataBase;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			Connection con = DataBase.creerCon();
			if (con != null) {
				System.err.println("ok");
			}
			else
			{
				System.err.println("no");
			}
			
			String login = request.getParameter("user");
			String pw = request.getParameter("password");
			if ( login.equals("admin") && pw.equals("admin") )
			{
				request.getRequestDispatcher("/gestion.jsp").forward(request, response);
			}
			else if ( login.equals("responsable1") && pw.equals("responsable1") )
			{
				request.getRequestDispatcher("/gestionR.jsp").forward(request, response);
			}
			else if ( login.equals("directeur") && pw.equals("directeur") )
			{
				request.getRequestDispatcher("/gestionD.jsp").forward(request, response);
			}
					
		} 
		 catch (ClassNotFoundException e) {
		 System.err.println(e.getMessage());
		 } 

	}

}
