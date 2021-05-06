package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Users.Post;
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
	
	
	
	
	
	/*public int loginUser(Users userDetails)
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
					
					return 1;
					
				}
				
				
				
				
				
				
				
			}
			catch(Exception ex)
			{
				
				ex.printStackTrace();
			}
			
			
			
			
		
			
		return 0;
		
		
		
		
		
	}*/
	
	
	public Users loginUser(Users userDetails)
	{
		
		
			Users users=null;
			
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
					
					users=new Users();
					users.setId(rs.getInt("id"));

					users.setName(rs.getString("fullName"));
					users.setPhoneno(rs.getString("number"));
					users.setEmail(rs.getString("emailId"));
					users.setPassword(rs.getString("password"));
					
					
					
				}
				
				
				
				
				
				
				
			}
			catch(Exception ex)
			{
				
				ex.printStackTrace();
			}
			
			
			
			
		
			
		
		
		
		
			return users;
		
	}
	
	
	
	
/*	public Post getUserId(int uid)
	{
		
		
		
		Post post=null;
		
		try
		{
			String Query;
			
			
			Query="select userId from Post where uid=?";
			PreparedStatement ps=con.prepareStatement(Query);
			ps.setInt(5, uid);
			
			
			
			
			ResultSet rs=ps.executeQuery();

			while(rs.next())
			{
				post=new Post();
			
				post.setUserId(rs.getInt(5));
				
				
				
			}
			
			
			
			
		}
				
		
		catch(Exception ex)
		{
			
			
			ex.printStackTrace();
			
			
		}
		
		
		
		
		
		
		
		return post;
		
		
		
	}*/
	
	
}
