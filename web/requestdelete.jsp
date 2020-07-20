<%-- 
    Document   : request delete.jsp
    Created on : 10 May, 2020, 4:10:43 PM
    Author     : Manmeet
--%>
<%@page import="java.sql.*"%>


  <%
                String name = request.getParameter("id");
                PreparedStatement st;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");
                st = con.prepareStatement("delete from employeereq where empname = ?");
                st.setString(1, name);
                st.executeUpdate(); 

                                                        

     %>
            <script>
                alert("record deleted");
            </script>
            
            <div align="right">
            <h3> <a href="ProductRequestAdmin.jsp"> Go back </a></h3>
            </div>