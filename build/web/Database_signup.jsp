<%-- 
    Document   : Database_signup
    Created on : 14 Mar, 2020, 5:28:45 PM
    Author     : Manmeet
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
        <% 
           String empname = request.getParameter("employee_name");
           String empid = request.getParameter("employee_id");
           String password = request.getParameter("password");
           String usertype = request.getParameter("user");
           try
           {    Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");
                Statement st = con.createStatement();
                 int i = st.executeUpdate("insert into signupinfo(empname,empid,password,usertype) values('"+ empname +"','"+ empid +"','"+ password +"','"+ usertype +"')");
                 if (i>0)
                    {   
                       session.setAttribute("empid",empname);
                       response.sendRedirect("SuccessRegistration.jsp");   
                    }
                    else
                    {
                        out.println("erroeeeeeeeeee");
                    }
           }
               catch(Exception e)
                {
                    System.out.println(e);
                } 
        %>
     
