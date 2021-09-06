<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String sid=request.getParameter("sid");
            String year=request.getParameter("year");
            String branch=request.getParameter("branch");
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
            String s="insert into studentInfo values(?,?,?,?)";
            PreparedStatement p=cn.prepareStatement(s);
            p.setString(1, name);
            p.setString(2, sid);
            p.setString(3, year);
            p.setString(4, branch);
            
            int i=p.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("index.jsp");
            }
            
        %>
    </body>
</html>