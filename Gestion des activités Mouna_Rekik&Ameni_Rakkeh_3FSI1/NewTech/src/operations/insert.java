package operations;
import java.sql.*;
import db.DataBase;

public class insert {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection con = DataBase.creerCon();
		
		PreparedStatement ps = con.prepareStatement("insert into direction(Nom_direction,Email) values (?,?)"); 
        
       
        ps.setString(1, "Direction1");
        ps.setString(2, "Direction1@gmail.com");
        
        int i = ps.executeUpdate();
        if (i>0) {
        	System.out.println("Insertion avec succès ...");
        }
        else {
        	System.err.println("Problème d'insertion !");
        }
        
	}

}



	
	
