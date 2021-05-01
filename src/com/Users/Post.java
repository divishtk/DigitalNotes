package com.Users;

import java.util.Date;

public class Post {

	
	private int id;
	private String title;
	private String description;
	private String content;
	private Date pdate;
	private Users userDetails;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public Users getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(Users userDetails) {
		this.userDetails = userDetails;
	}
	
	
	
	
	
	
	
}
