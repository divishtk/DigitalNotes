package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;



public class postDAO {

	
	
	private Connection con;

	public postDAO(Connection con) {
		super();
		this.con = con;
	}
	
	
	
	
	public boolean AddNotes(String titles,String content,int uid) {
		
		
		boolean f=false;
		
		
		try
		{
			
			String query;
			query="insert into Post (title,content,userId)values(?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,titles);
			ps.setString(2,content);
			ps.setInt(3,uid);
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				
				f=true;
				System.out.println("Posted Notes"); 
			}
			
			
		
			
			
			
			
		}
		catch(Exception ex)
		{
			
			
			ex.printStackTrace();
		}
		
		
		
		
		return f;
		
	}
	
	
	
	
}
