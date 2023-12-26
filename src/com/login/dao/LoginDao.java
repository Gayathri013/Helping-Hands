package com.login.dao;
import java.io.IOException;
import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/insert")
public class LoginDao extends HttpServlet 
{
	  Statement stm = null;
	 Connection conn = null;
	 
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	{   String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/abc", "gayathri", "gayathri");
			
			String sql="INSERT INTO login VALUES(?,?)";
			PreparedStatement stm =conn.prepareStatement(sql);
			stm.setString(1, uname);
			stm.setString(2, pass);	
			stm.execute();
			conn.close();
			
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("displaydata.jsp");

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
	}

	}
	}
