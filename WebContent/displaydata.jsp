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
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
<title>Volunteer Data</title>
 <style type="text/css">
     body{
       background-repeat:no-repeat;
       background-size:100%;
     }
 </style>
</head>
<body background="./images/data.jpg">
<% if(session.getAttribute("username")==null){
	   response.sendRedirect("login.jsp");
	   
   }
        
  %>
  

   
   <h2 style="padding-left:450px;padding-bottom:10px">List of Volunteers</h2>
   
   <table class="table table-bordered" align="center" cellpadding="5" cellspacing="5" >
   <thead>
   <tr>
        <th>Name</th>
         <th>Age</th>
          <th>Timings</th>
           <th>Available Days</th>
            <th>Phone Number</th>
          <th>Register</th>
   </tr>
   </thead>
   <tbody >
      <%
      
      try 
      {
    	  
    	  Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/abc", "gayathri", "gayathri");
		String sql = "select * from volunteers";
		Statement stm = con.createStatement();
		ResultSet rs = stm.executeQuery(sql);
	   
	    	    while(rs.next())
	    	    {
	    			%>
	    			<tr  >
	    			
	               <td ><%=rs.getString("name") %></td>
	                 <td><%=rs.getInt("age")%></td>
	                  <td ><%=rs.getString("timings") %></td>
	                   <td ><%=rs.getString("available") %></td>
	                    <td><%=rs.getString("phno") %></td>
	                    <td ><a href='register.jsp?vname=<%=rs.getString("name")%>&&phno=<%=rs.getString("phno")%>'>Register</a></td>
	                   
	                    </tr>
	               <% 
	               
	                }
	    	    
	              
	          }
	          catch(Exception ex)
	          {
	        	  out.println("Exception:"+ex.getMessage());
	        	  ex.printStackTrace();
	          }
	         
         	%>
	
     
   </tbody>
   </table>
   
</body>
</html>