package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Users.Post;

public class postDAO {

	private Connection con;

	public postDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean AddNotes(String titles, String content, int uid) {

		boolean f = false;

		try {

			String query;
			query = "insert into Post (title,content,userId) values(?,?,?)";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, titles);
			ps.setString(2, content);
			ps.setInt(3, uid);

			int i = ps.executeUpdate();

			if (i > 0) {

				f = true;
				System.out.println("Posted Notes");
			}

		} catch (Exception ex) {

			ex.printStackTrace();
		}

		return f;

	}

	public List<Post> getBooksDetails(int userid) {

		List<Post> list = new ArrayList<Post>();
		Post post = null;

		try {
			String query;
			query = "select * from Post where userId= ? order by id DESC";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, userid);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				post = new Post();
				post.setId(rs.getInt(1));
				post.setTitle(rs.getString(2));
				post.setContent(rs.getString(3));
				post.setPdate(rs.getTimestamp(4));
				post.setUserId(rs.getInt(5));

				list.add(post);
				// System.out.println("RS DATA"+rs.getInt(1));
				// System.out.println("RS DATA"+rs.getString(2));

			}

		}

		catch (Exception ex) {

			ex.printStackTrace();
		}

		return list;

	}

	public Post getBooksById(int bookID) {

		Post post = null;

		try {

			
			
			String query=null;
			
			query="select * from post where id=?";
			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, bookID);
			
			ResultSet rs=ps.executeQuery();
			
			
			while(rs.next())
			{
				
				post=new Post();
				post.setId(rs.getInt(1));
				post.setTitle(rs.getString(2));
				post.setContent(rs.getString(3));
				
				
				
				
				
				
			}
			
			
			
			
			
			
			
			
			
			
		}

		catch (Exception ex) {

			ex.printStackTrace();

		}

		return post;

	}
	
	
	
	public boolean notesUpdate(int bookid,String title,String Content)
	{
		boolean flag;
		
		
		
		
		try
		{
			
				String updateQuery="update post set title=?,content=? where id=?";
			
				PreparedStatement ps=con.prepareStatement(updateQuery);
				ps.setString(1, title);
				ps.setString(2, Content);
				ps.setInt(3, bookid);
				int i=ps.executeUpdate();
				if(i>0)
				{
				

					return true;
					
				}
			
			
			
		}
		
		
		catch(Exception ex)
		{
			
			
			ex.printStackTrace();
			
		}
		
		
		
		
		
		
		
		return false;
	}
	
	
	
	
	
	public boolean deleteNotebyId(int bookid)
	{
		
		
		
		
		try
		{
			
			String delete=null;
			
			delete="delete from Post where id=?";
			
			PreparedStatement ps=con.prepareStatement(delete);
			ps.setInt(1, bookid);
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				
				
				return true;
				
			}
			
			
			
		}
		
		
		catch(Exception ex)
		{
			
			ex.printStackTrace();
		}
		
		
		
		
		
		
		return false;
		
		
		
		
	}
	
	
	
	
	
	
	
	
	

}
