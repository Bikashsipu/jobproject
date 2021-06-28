package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.Post;
import com.User.UserDetails;


@SuppressWarnings("unused")
public class PostDAO {
	private Connection con;

	public PostDAO(Connection con) {
		super();
		this.con = con;
	}
	public boolean addJobs(String title,String job_profile,int uid)
	{
		
			boolean f=false;

			try
			{
				String query="insert into project.post(title,job_profile,uid) values(?,?,?)";
				
				PreparedStatement ps=con.prepareStatement(query);
				
				ps.setString(1, title);
				ps.setString(2, job_profile);
				ps.setInt(3, uid);
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
	public List<Post> getData(int id)
	{
		List<Post> list=new ArrayList<Post>();
		Post po =null;
		try {
			String query="select * from project.post where uid=? order by id DESC";
			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				po=new Post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setJob_profile(rs.getString(3));
				po.setDate(rs.getTimestamp(4));
				list.add(po);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
		
	}
	
	public Post getDataById(int id)
	{
		Post p=null;
		 
		 try {
			 String qry="select * from project.post where id=?";
					 PreparedStatement ps=con.prepareStatement(qry);
					 ps.setInt(1, id);
					 ResultSet rs=ps.executeQuery();
					 if(rs.next()){
						 p=new Post();
						 p.setId(rs.getInt(1));
							p.setTitle(rs.getString(2));
							p.setJob_profile(rs.getString(2));
							
					 }
		 }
		 
		 catch(Exception e)
			{
				e.printStackTrace();
			}
		return p;
		
		
	
		}
	public boolean PostUpdate(int jobid,String title,String job_profile)
	{
		boolean f=false;
		try
		{
		String q="update project.post set title=?,job_profile=? where id=?";
		 PreparedStatement ps=con.prepareStatement(q);
		 ps.setString(1, title);
		 ps.setString(2, job_profile);
		 ps.setInt(3, jobid);
	int i=ps.executeUpdate();
	if(i==1)
	{
		f=true;
		}}
		 catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
		
	}
	public boolean DeleteJobs(int jobid)
	{
		boolean f=false;
		try {
			String q="delete from project.post where id=?";
			 PreparedStatement ps=con.prepareStatement(q);
			
			 ps.setInt(1, jobid);
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
			}
			
		}
		 catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
		
	}
}

	

