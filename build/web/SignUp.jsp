<%-- 
    Document   : SignUp
    Created on : 13 Mar, 2020, 8:48:43 AM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>   Signup  </title>
      <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body background="images\background.jpg">
         
<div class="topnav">
<center>
    <img src="images\svvv logo.png"/> 
</center>
  <a  href="index.html">Home</a>
  <a class="active" href="SignUp.jsp">Signup</a>
  <a href="ContactUs.jsp">Contact-Us</a>
  <a href="AboutUs.jsp">About-US</a>
</div>
     <center><h2> Sign UP </h2> </center>
    <div align = "center">
        <form action="Database_signup.jsp" method="post">

            <table cellpadding="2" class="table-responsive-md table-info">
            <tbody>
            <tr>
                <td>EMPLOYEE NAME:</td>
                <td> <input type="text" name="employee_name" required="true"/> </td>
            </tr>
            <br/>
                
            <tr>
                <td>EMPLOYEE ID:</td>
                <td><input type="text" name="employee_id" required="true"/> </td>
            </tr>
            <br>
            <tr>
                <td>PASSWORD :</td>
                <td><input type="password" name="password" required="true"/></td>
            </tr>
            <br>
            
            <tr>
                <td> <input type="radio" name="user" value = "GeneralUser" required="true"> General User </input></td>
                <td> <input type="radio" name="user" value="Admin" required="true"> Admin </input></td>

            </tr>
            <br/>
            <br/>

              <td>
                  <input type="submit" value = "Submit" class="btn-info"/> 
              </td>  
              <td>
                <input type="reset" value="Reset" class="btn-warning"/>
              </td>
    
            </tbody>
            </table>
        </form>  
    </div>
</body>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color:#5DADE2;
}

.topnav a {
  float: left;
  color: #f2f2f2;                                                   
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

body {
  background-image: url('background.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

</style>