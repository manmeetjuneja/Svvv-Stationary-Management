
<%@page import="java.sql.*"%>

  <%
                String pid = request.getParameter("id");
                PreparedStatement st;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");
                st = con.prepareStatement("delete from product where pid = ?");
                st.setString(1, pid);
                st.executeUpdate(); 

     %>
            <script>
                alert("record deleted");
            </script>
            
            <div align="right">
            <h3> <a href="Database_productdetails.jsp"> Go back </a></h3>
            </div>