<%-- 
    Document   : SuccessRegistration
    Created on : 20 Mar, 2020, 1:36:49 PM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% 
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( ' Sign In Success' ,  'You Can Login into System ' ,  'success' );");
        out.println("});");
        out.println("</script>");
        %>
        
        <jsp:include page="index.html"/>
    </body>
</html>
