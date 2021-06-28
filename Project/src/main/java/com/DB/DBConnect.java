package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection con;
	public static Connection getCon()
	{
		try {
			if(con==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
			
				con=DriverManager.getConnection("jdbc:mysql://localhost:3307?user=j2ee&password=1999");
			}
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return con;
	}

}
