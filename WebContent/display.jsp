<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*,java.util.*,javax.sql.*, java.io.IOException,
 java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement,
 java.sql.ResultSet,
 

 javax.servlet.ServletException,
 javax.servlet.annotation.WebServlet,
  javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest,
 javax.servlet.http.HttpServletResponse,
 javax.servlet.http.HttpSession "  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
     body{
       background-repeat:no-repeat;
       background-size:100%;
     
     }
 </style>
</head>
<body background="./images/y.jpg">
       <%
      
   		String vname = request.getParameter("uname");
       String pass = request.getParameter("pass");
       String available = request.getParameter("available");
       
   		try
   		{
   			Class.forName("com.mysql.jdbc.Driver");
   			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/abc", "gayathri", "gayathri");
   			String sql = "select * from vlogin where vname=? and pass=?";
   			PreparedStatement st = con.prepareStatement(sql);
   			st.setString(1,vname);
   			st.setString(2,pass);
   			ResultSet rs = st.executeQuery();
   		
   			
   		if(rs.next())
   		{
   			String sq = "update volunteers set available=? where name=?";
   			PreparedStatement s = con.prepareStatement(sq);
   			s.setString(1, available);
   			s.setString(2,vname);
   			
   			s.execute();
   			%>
   			<h1  style="padding-left:400px;padding-top:140px">Your schedule has been Updated</h1>
   			
   	        <% 
   			}
   				
   			
   		
   		else{
   		  response.sendRedirect("vlogin.jsp");
   		}
   		}catch(Exception e)
   		{
   			e.printStackTrace();
   		}
   	
       %>
</body>
</html>