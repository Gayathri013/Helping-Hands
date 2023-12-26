<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
<title>Sign Up</title>

 <style type="text/css">
     body{
       background-repeat:no-repeat;
       background-size:100%;
     }
 </style>
</head>
<body background="./images/signin.jpg">
    
      <form action="insert"  method="post"  style="padding:50px; padding-left:460px " >
      <h2 style="padding:20px; padding-left:80px">Sign Up</h2>
        
        User Name &nbsp&nbsp&nbsp: <input type="text" name="uname" required>
        <br>
        <br>
        Password &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type="password" name="pass" required>
        <br>
        <br>
        E-mail&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type="text" required>
        <br>
        <br>
        PhoneNumber: <input type="text" name="uname" required>
        <br>
        <br>
        Address&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type="textarea" required>
        <br>
        <br>
        <button class="btn btn-info" style="margin-left:90px;"">Submit</button>
       
      </form>
      
</body>
</html>