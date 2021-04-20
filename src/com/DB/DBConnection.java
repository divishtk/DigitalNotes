package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 

{
	
	private static Connection con;
	
	
	public static Connection getConnection()
	{
		
		try
		{
			
			if(con==null)
			{
				Class.forName("com.mysql.cj.jdbc.Driver");	
				//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Notes","root","admin123");
				 con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Notes","root","admin123");

			}
			
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
		
		
		
		
		return con;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
