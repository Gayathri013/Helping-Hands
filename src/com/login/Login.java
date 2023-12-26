package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user")
public  class Login extends HttpServlet {
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/abc", "gayathri", "gayathri");
			String sql = "select * from login where uname=? and pass=?";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1,uname);
			stm.setString(2,pass);
			System.out.println("hello");
			ResultSet rs = stm.executeQuery();
		
		        if(rs.next())
	         	{
	         		HttpSession session = request.getSession();
	         		session.setAttribute("username", uname);
	         		response.sendRedirect("displaydata.jsp");
	          	}
	        	else {
	         		response.sendRedirect("login.jsp");
	         	}
	       	}catch(Exception e)
		       {
			      e.printStackTrace();
		      }
	}
		

}
