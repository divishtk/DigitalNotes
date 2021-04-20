package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Users.Users;

public class userDAO {

	
	private Connection con;
	
	
	
	
	public userDAO(Connection connection) {

		this.con=connection;
	}




	public boolean addUsers(Users usersDetails)
	{
		
		boolean f=false;
		
		try
		{
			
			String query;
			query="insert into UserDetails (fullName,number,emailId,password)values(?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,usersDetails.getName());
			ps.setString(2,usersDetails.getPhoneno());
			ps.setString(3,usersDetails.getEmail());
			ps.setString(4,usersDetails.getPassword());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				
				f=true;
				System.out.println("Inserted"); 
			}
			
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
			
		}
		
		
		
		
		
		return f;
		
		
		
		
		
	}
	
	
	
	
	
	public int loginUser(Users userDetails)
	{
		
		
			
			
			try
			{
				
				String query="select * from UserDetails where emailId=? and password=? ";
				
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1,userDetails.getEmail());
				ps.setString(2,userDetails.getPassword());
				
				ResultSet rs=ps.executeQuery();
				
				
				if(rs.next())
				{
					System.out.println("Fetched Data");
					
				}
				
				
				
				
				
				
				
			}
			catch(Exception ex)
			{
				
				ex.printStackTrace();
			}
			
			
			
			
		
			
		return 1;
		
		
		
		
		
	}
	
	
	
}
