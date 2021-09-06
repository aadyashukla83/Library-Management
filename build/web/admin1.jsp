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
            String name=request.getParameter("username");
            String password=request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
            PreparedStatement p=cn.prepareStatement("select * from admin where name=? and password=?");
            p.setString(1, name);
            p.setString(2, password);
            ResultSet r=p.executeQuery();
            while(r.next())
            {
                response.sendRedirect("index.jsp");
            }
            
        %>
    </body>
</html>
