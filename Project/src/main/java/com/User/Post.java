package com.User;

import java.util.Date;

public class Post {
	private int id;
	private String title;
	private String job_profile;
	private Date date;
	private UserDetails user;
	public Post(int id, String title, String job_profile, Date date, UserDetails user) {
		super();
		this.id = id;
		this.title = title;
		this.job_profile = job_profile;
		this.date = date;
		this.user = user;
	}
	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public String getJob_profile() {
		return job_profile;
	}
	public void setJob_profile(String job_profile) {
		this.job_profile = job_profile;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}

}
