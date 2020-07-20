<%-- 
    Document   : DatabaseLogin
    Created on : 20 Mar, 2020, 1:50:31 PM
    Author     : Manmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String empid = request.getParameter("employee_id");    
    String pwd = request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVVV","root", "");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs = st.executeQuery("select * from signupinfo where empid='" + empid + "' and password='" + pwd + "'");

    if (rs.next())
    {   String type = rs.getString("usertype");
       if(type.equals("GeneralUser"))
       {   
                //session.setAttribute("empid", empid);
                response.sendRedirect("GeneralUser.jsp"); 
               //out.println("welcome " + userid);
                //out.println("<a href='logout.jsp'>Log out</a>");
                //response.sendRedirect("success.jsp");
        }
        else if(type.equals("Admin"))
        {   //session.setAttribute("empid", empid);
            response.sendRedirect("AdminLogin.jsp");
        }
    }
    else 
    {   response.sendRedirect("LoginFailedAlert.jsp");
        //out.println("Invalid password <a href='index.html'>try again</a>");
    }
%>
