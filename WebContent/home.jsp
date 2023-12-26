<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
<title>Helping Hands</title>

 <style type="text/css">
     body{
      
       background-repeat:no-repeat;
       background-size:100%;
     }
     div.groove {border-style: groove;
      margin-left: 300px; 
       margin-right: 500px; 
       margin-bottom:25px;
     }
    
 </style>
</head>
<body background="./images/login.jpg">
       
       <h1  style="padding-top:25px; padding-left: 400px;padding-bottom:25px">Helping Hands</h1>
        <form action="about.jsp"  >
            <button   class="btn btn-light"   >About Us</button>
             </form>
             
      <div class="groove" >
            <h3 style="padding-left: 170px;"> Handicapped </h3>
         <form action="login.jsp"  >
            <button   class="btn btn-light"  style="margin-left:200px" >Login</button>
             </form>
             
          <form action="signup.jsp" style="margin-top:17px">
            <button  class="btn btn-light" style="margin-left:190px">Sign Up</button>
          </form>
       </div>
       <div class="groove" >  
       <h3 style="padding-left: 180px;"> Volunteer</h3> 
      <form action="admin.jsp" style="margin-top:20px">
            <button  class="btn btn-light" style="margin-left:150px">To Register as Volunteer</button>
          </form>
          <form action="vlogin.jsp" style="margin-top:20px">
            <button  class="btn btn-light" style="margin-left:180px">Volunteer Login</button>
          </form>
        </div>    
      
      
     
</body>
</html>