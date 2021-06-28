package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;
import com.mysql.cj.protocol.Resultset;

public class UserDAO {
private Connection con;

public UserDAO(Connection con) {
	super();
	this.con = con;
}
public boolean addUser(UserDetails us)
{
	boolean f=false;

	try
	{
		String query="insert into project.user(name,email,password) values(?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1, us.getName());
		ps.setString(2, us.getEmail());
		ps.setString(3, us.getPassword());
	int i=ps.executeUpdate();
	
	if(i==1)
	{
		f= true;
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return f;
	
}
public UserDetails  loginUser(UserDetails us)
{
	UserDetails user=null;
	try{
		String query1="select * from project.user where email=? and password=?";
		PreparedStatement ps=con.prepareStatement(query1);
		ps.setString(1, us.getEmail());
		ps.setString(2, us.getPassword());
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			user=new UserDetails();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			;
		
		}
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	return user;
}


}
