package project;

import java.sql.Connection;
import java.sql.DriverManager;

public class DaoClass {
	
	public static Connection getCon()  {
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop","root","password");
	    return conn;
		}
		catch(Exception e) {
			System.out.println("in catch of dao class");

			e.printStackTrace();		
		}
		return null;
	}
}
