<%-- 
    Document   : ProductRequest
    Created on : 26 Mar, 2020, 2:16:39 PM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>


  <%

            if(request.getParameter("submit")!=null);
            {
                String ename = request.getParameter("empname");
                String pname = request.getParameter("pname");
                String quantity = request.getParameter("quantity");
                String date = request.getParameter("date");
                

                PreparedStatement st;
                ResultSet rs;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");

                st = con.prepareStatement("insert into employeereq(empname,pname,quantity,date)values(?,?,?,?)");
                st.setString(1, ename);
                st.setString(2, pname);
                st.setString(3, quantity);
                st.setString(4, date);
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
        <title>request page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/aboutuscss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>   
        <center><img src="images\svvv logo.png"/></center>
        <h3> <i> Welcome</i> </h3> 
            <div class="topnav">
            <a  href="GeneralUser.jsp" >Back</a>


            </div>
        </br> 

        <div class="row">
            
             <div class = "col-sm-4">
                 <form method="POST" action="#" class='alert-info'>
                  
                     <div align ="left"> 
                     
                         <label class ="form-label"> <b>Employee Name</b> </label>
                         <input type ="text" class="form-control" placeholder ="emp name" name="empname" id="empname" required> 
                     </div>
                            </br>
                    <div align ="left"> 

                        <label class ="form-label"> <b>Product name</b> </label>
                        <input type ="text" class="form-control" placeholder ="Product name" name="pname" id="pname" required> 

                    </div>
                            </br>
                     <div align ="left"> 
                         
                     
                         <label class ="form-label"> <b>Quantity </b> </label>
                         <input type ="text" class="form-control" placeholder ="Quantity" name="quantity" id="quantity" required>
                     </div>
                            
                            </br>
                            
                     <div align="left">
                         <label class = "form-label" for="date"><b>Date</b></label>
                            <input type="date" onload="getDate()" class="form-control" id="date" 
                              name="date" required="">
                     </div>
                            </br>

                     <div align="left">
                         <input type="submit" id ="submit" value ="submit" name="Submit" class="btn btn-info">
                         <input type="reset" id ="reset" value ="reset" name="Reset" class="btn btn-warning">
                     </div>
                     
                 </form>
              </div>         
                     
            <div class ="col-sm-5">
                <div class="panel-body">
                     <table id="tb1-product" class="table table-responsive table-striped table-success" cellpadding="0" width="100%">
              
                            <thead>
                             <tr>
                                 <th> Employee Name </th>
                                 <th> Product Name </th>
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
            
                                 <td> <a href="requestdelete.jsp">DELETE</a> </td>
                                 
                                  
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
<script>
    
    function getDate(){
    var today = new Date();

document.getElementById("date").value = today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2);


}
    
    </script>