<%-- 
    Document   : GeneralUser
    Created on : 13 Mar, 2020, 8:40:49 AM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>   General User  </title>
          <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
          <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
          <link href="bootstrap/css/aboutuscss.css" rel="stylesheet" type="text/css"/>
</head>

<body background="images\background.jpg">
<center><img src="images\svvv logo.png"/></center>
 <marquee> <h3> <i> Welcome User</i> </h3> </marquee>
<div class="topnav">
<a  href="index.html" >Home</a> 
<a  href="logout.jsp" >Logout</a>
  
</div>
 
<div>
 
    <script type="text/javascript"> 
        var myDate = new Date(); 
        var myDay = myDate.getDay(); 
        
        // Array of days. 
        var weekday = ['Sunday', 'Monday', 'Tuesday', 
            'Wednesday', 'Thursday', 'Friday', 'Saturday' 
        ]; 
        //document.write("Today is : " + weekday[myDay]); 
        //document.write("<br/>"); 
        
        // get hour value. 
        var hours = myDate.getHours(); 
        var ampm = hours >= 12 ? 'PM' : 'AM'; 
        hours = hours % 12; 
        hours = hours ? hours : 12; 
        var minutes = myDate.getMinutes(); 
        minutes = minutes < 10 ? '0' + minutes : minutes; 
        var myTime = hours + " " + ampm + " : " + minutes +  
            " : " + myDate.getMilliseconds(); 
        //document.write("\tCurrent time is : " + myTime); 
    </script>

</div>
 
 <div class="col-md-6">
     <br>
     <p><mark> For Requesting items from Admin Press</mark> </p>
                          <form action="ProductRequestUser.jsp">
                                    <button type="submit" class ="btn btn-info">Product Request </button>
                          </form>   
     
 </div>
 
<style>
body {
  background-image: url('background.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

</style>
