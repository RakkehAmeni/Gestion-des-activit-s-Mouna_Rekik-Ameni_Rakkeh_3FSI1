package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBase {

	public static Connection creerCon() throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String user = "root";
		String password = "";
		String url = "jdbc:mysql://localhost:3306/s?serverTimezone=UTC";
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);

		} catch (SQLException e) {

			e.getMessage();
		}
		return con;
	}

	public static void main(String[] args) throws ClassNotFoundException {

		if (creerCon() != null) {
			System.out.println("Connection établie");
		} else {
			System.out.println("Pas de connection"+creerCon());
		}
		
		
	}
}
