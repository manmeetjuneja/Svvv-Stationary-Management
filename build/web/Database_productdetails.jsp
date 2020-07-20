<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


  <%

            if(request.getParameter("submit")!=null);
            {
                String name = request.getParameter("pname");
                String quantity = request.getParameter("quantity");
                String category = request.getParameter("category");
                

                PreparedStatement st;
                ResultSet rs;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");

                st = con.prepareStatement("insert into product(pname,quantity,category)values(?,?,?)");
                st.setString(1, name);
                st.setString(2, quantity);
                st.setString(3, category);
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
        <title>admin detail page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>   
        <center><img src="images\svvv logo.png"/></center>
        <marquee> <h3> <i> Welcome ADMIN </i> </h3> </marquee>
            <div class="topnav">
            <a  href="AdminLogin.jsp" >Back</a>
            <a  href="index.html" >Home</a> 
            <a  href="logout.jsp" >Logout</a>

            </div>
        </br> 

        <div class="row">
            
             <div class = "col-sm-4">
                 <form method="POST" action="#"class='alert-info'>
                  
                     <div align ="left"> 
                     
                         <label class ="form-label"> <b>Product Name</b> </label>
                         <input type ="text" class="form-control" placeholder ="Product name" name="pname" id="pname" required> 
                     </div>
                            </br>
                     <div align ="left"> 
                     
                         <label class ="form-label"> <b>Quantity </b> </label>
                         <input type ="text" class="form-control" placeholder ="Quantity" name="quantity" id="quantity" required>
                     
                     </div>
                            </br>
                     <div align ="left"> 
                     
                         <label class ="form-label"> <b>Product Type/Category</b> </label>
                         <input type ="text" class="form-control" placeholder ="Product type" name="category" id="category" required> 
                     
                     </div>
                     </br>
             
                     <div align="left">
                         <input type="submit" id ="submit" value ="submit" name="Submit" class="btn btn-info">
                         <input type="reset" id ="reset" value ="reset" name="Reset" class="btn btn-warning">
                     </div>
                     
                 </form>
              </div>         
                     
            <div class ="col-sm-4">
                <div class="panel-body">
                     <table id="tb1-product" class="table table-responsive table-striped table-success" cellpadding="0" width="100%">
              
                            <thead>
                             <tr>
                                 <th> Product Name </th>
                                 <th> Quantity </th>
                                 <th> Category </th>
                                 <th> Edit </th>
                                 <th> Delete </th>
                                 
                             </tr>
 
                            <%
                                PreparedStatement st;
                                ResultSet rs;
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");
                                String query = "select * from product";
                                Statement pst = con.createStatement();
                                
                                    rs = pst.executeQuery(query);
                                    while(rs.next())
                                    {
                                         String id = rs.getString("pid");
                            %>
                           
                             <tr>
                                 <td> <%=rs.getString("pname")%></td>
                                 <td> <%=rs.getString("quantity")%></td>
                                 <td> <%=rs.getString("category")%></td>
                                 <td> <a href="Database_productedit.jsp?id=<%=id%>">EDIT</a> </td>
                                 <td> <a href="Database_productdelete.jsp?id=<%=id%>">DELETE</a> </td>
                                 
                                  
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