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
        String bid=request.getParameter("bid");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
        PreparedStatement p=cn.prepareStatement("delete from bookentry where bid=?");
        p.setString(1, bid);
        int i=p.executeUpdate();
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
