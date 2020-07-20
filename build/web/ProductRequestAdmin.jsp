<%-- 
    Document   : ProductRequestAdmin
    Created on : 27 Mar, 2020, 2:49:45 PM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin look request</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/aboutuscss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>   
        <center><img src="images\svvv logo.png"/></center>
        <marquee> <h3> <i> <mark>ADMIN </mark></i> </h3> </marquee>
            <div class="topnav">
            <a  href="AdminLogin.jsp" >Back</a>    

            </div>
    <div class="row">    
<div class ="col-sm-6 align-items-center" >
                <div class="panel-body">
                     <table id="tb1-product" class="table table-responsive table-striped table-success" cellpadding="0" width="100%">
              
                            <thead>
                             <tr>
                                 <th> Employee Name </th>
                                 <th> Employee Name </th>
                                 <th>Quantity </th>
                                 <th>Date </th>
                                 <th> Delete</th>
                                 
                             </tr>

                            <%
                                PreparedStatement st;
                                ResultSet rs;
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");
                                String query = "select * from employeereq";
                                Statement pst = con.createStatement();
                                
                                    rs = pst.executeQuery(query);
                                    while(rs.next())
                                    {
                                         String name = rs.getString("empname");
                            %>
                           
                             <tr>
                                 <td> <%=rs.getString("empname")%></td>
                                 <td> <%=rs.getString("pname")%></td>
                                 <td> <%=rs.getString("quantity")%></td>
                                 <td> <%=rs.getString("date")%></td>
                                 
                                 <td> <a href="requestdelete.jsp?id=<%=name%>">DELETE</a> </td>
                                  
                                 
                                 
                                 
                             </tr>
                            
                                    <%
                                     }
                                  %>
 
                     </table>      
                </div>
        </div> 
    </div>
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