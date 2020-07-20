<%-- 
    Document   : Database_productedit
    Created on : 22 Mar, 2020, 7:55:28 PM
    Author     : Manmeet
--%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%

            if(request.getParameter("submit")!=null);
            {   String id = request.getParameter("pid");
                String name = request.getParameter("pname");
                String quantity = request.getParameter("quantity");
                String category = request.getParameter("category");
                

                PreparedStatement st;
                ResultSet rs;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");

                st = con.prepareStatement("update product set pname = ?,quantity = ?,category= ? where id = ?");
                st.setString(1, name);
                st.setString(2, quantity);
                st.setString(3, category);
                st.setString(4, id);
                
                st.executeUpdate(); 

                }
                catch(ClassNotFoundException e)
                {
                    System.out.println(e);
                }
                catch(SQLException e)
                {
                    System.out.println(e);        
                }
                catch(Exception e)
                {
                    System.out.println(e);        
                }
                    
            }
            %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invert page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h2>Product edit Page </h2>
    
    <div class="row">
        <div class = "col-sm-6">
                 <form method="POST" action="#" class='alert-info'>
                     <%
                                     Connection con;
                                     PreparedStatement st;
                                     ResultSet rs;
                                     
                                     Class.forName("com.mysql.jdbc.Driver");
                                     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");

                                     String id = request.getParameter("pid");
                                     st = con.prepareStatement("select * from product where pid = ?");
                                     st.setString(1, id);
                                     
                                     rs = st.executeQuery();
                                     
                                     while(rs.next())
                                     {    
                                     
                                     }
                                         
                      %>
                     
                    <div align ="left"> 
                        <label class ="form-label"> <b>Product Name</b> </label>
                        <input type ="text" class="form-control" placeholder ="Product name" value="<%-- <%= rs.getString("pname")%> --%>" name="pname" id="pname" required> 
                    </div>
                    </br>
                    <div align ="left"> 
                        <label class ="form-label"> <b>Quantity </b> </label>
                        <input type ="text" class="form-control" placeholder ="Quantity" value="<%-- <%=rs.getString("quantity")%> --%>" name="quantity" id="quantity" required>
                    </div>
                    </br>
                    
                    <div align ="left"> 
                        <label class ="form-label"> <b>Product Type/Category</b> </label>
                        <input type ="text" class="form-control" placeholder ="Product type" value="<%--<%=rs.getString("category")%> --%>" name="category" id="category" required> 
                    
                    </div>   
                                    <%--
                                       <%  } %> --%>


                                    <div align="right">
                         <input type="submit" id ="submit" value ="submit" name="Submit" class="btn btn-info">
                         <input type="reset" id ="reset" value ="reset" name="Reset" class="btn btn-warning">
                                    </div>
                           
                         <div align="right">
                             <p> <a href="Database_productdetails.jsp"> Click to Back </a></p>
                             
                         </div>    
                 </form>
              </div>       
        
    </div>
    </body>
</html>

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
  color: black;
  
}
body {
  background-image: url('images/background.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

</style>