<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
<title>Login</title>

<style type="text/css">
     body{
       background-repeat:no-repeat;
       background-size:100%;
     }
 </style>
</head>
<body  background="./images/password.jpg">
  
      <form action="user" method="post" style="padding:70px; padding-left:410px " >
        
        User Name :<input type="text" name="uname" required>
        <br>
        <br>
        Password &nbsp&nbsp:<input type="password" name="pass"  required>
        <br>
        <br>
        <button class="btn btn-light" style="margin-left:90px">Submit</button>
       
      </form>
      <form action="changepass.jsp"  style="padding-left:470px ">
      <button class="btn btn-light" >Change Password</button>
      
      </form>

</body>
</html>