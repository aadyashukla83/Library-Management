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
            String bname=request.getParameter("bname");
            String wname=request.getParameter("wname");
            String tech=request.getParameter("tech");
            String department=request.getParameter("department");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
            String s="insert into bookentry values(?,?,?,?,?)";
            PreparedStatement p=cn.prepareStatement(s);
            p.setString(1, bid);
            p.setString(2, bname);
            p.setString(3, wname);
            p.setString(4, tech);
            p.setString(5, department);
            int i=p.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("index.jsp");
            }
            
        %>
    </body>
</html>
