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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Thank You</title>
<style type="text/css">
     body{
       background-repeat:no-repeat;
       background-size:100%;
     }
 </style>
</head>
<body background="./images/y.jpg">
 <% if(session.getAttribute("username")==null){
	   response.sendRedirect("login.jsp");
	   
   }
        
  %>
  
   <%

      String vname= request.getParameter("vname");
       String phno= request.getParameter("phno");
       String name=(String)session.getAttribute("username");
       try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/abc", "gayathri", "gayathri");
			
			
			String sql="INSERT INTO register VALUES(?,?,?)";
			PreparedStatement stm =conn.prepareStatement(sql);
			stm.setString(1, name);
			stm.setString(2, vname);
			stm.setString(3,phno);
			stm.execute();
			String sq="delete from volunteers where name=?";
			PreparedStatement st =conn.prepareStatement(sq);
			st.setString(1, vname);
			st.execute();
		} 
       catch(Exception ex)
       {
    	   out.println("Exception:"+ex.getMessage());
     	  ex.printStackTrace();
       }
			
      
    %>
   <h2 Style="padding-left:340px;padding-top:80px">Thank You for visiting our website <%=name %> </h2>
    
    <h2 Style="padding-left:380px;padding-top:20px"><%=vname %> is your registered Volunteer</h2>
    <h3 Style="padding-left:330px;padding-top:20px" ><%=phno %> is your volunteer number to communicate </h2>
     
</body>
</html>