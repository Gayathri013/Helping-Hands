<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
<title>Change Password</title>
 <style type="text/css">
     body{
       background-repeat:no-repeat;
       background-size:100%;
     }
 </style>
</head>
<body     background="./images/changepass.jpg">
    <h2 style="padding:50px;padding-left:430px">Change Password</h2>
     <form action="Change"  style=" padding-left:410px " >
        
        User Name &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:<input type="text" name="uname">
        <br>
        <br>
        Password &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:<input type="password" name="pass">
        <br>
        <br>
        Confirm Password:<input type="password" name="pass">
       <br>
        <button class="btn btn-light" style="margin-left:90px;margin-top:20px">Confirm</button>
       
      </form>

</body>
</html>