<%-- 
    Document   : AdminLogin
    Created on : 23 Mar, 2020, 1:07:13 PM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Welcome page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/aboutuscss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>   
        <center><img src="images\svvv logo.png"/></center>
        <marquee> <h3> <i> Welcome <mark>ADMIN </mark></i> </h3> </marquee>
            <div class="topnav"> 
            <a  href="logout.jsp" >Logout</a>
            </div>
        <div class="row">
                <div class="col-md-6">

                          <form action="ProductRequestAdmin.jsp">
                                    <button type="submit" class ="btn-btn-info"> Check Product Request </button>
                          </form>   
                </div>
                <div class="col-md-6">

                      <form action="Database_productdetails.jsp">
                                    <button type="submit" class ="btn-btn-info"> Database details </button>
                        </form>
                </div>
            
        </div>
        </br> 

    </body>
</html>

<style>
body {
  background-image: url('images/background.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

</style>