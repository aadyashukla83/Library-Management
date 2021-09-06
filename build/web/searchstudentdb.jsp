<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="orange">
        <h1>Student Info</h1>
        <table  border="1">
            <tr>
                <td>NAME</td>
                <td>SID</td>
                <td>YEAR</td>
                <td>BRANCH</td>
                
            </tr>
            <%
                String sid=request.getParameter("sid");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
        String s="select * from studentInfo where Id="+sid+"";
        PreparedStatement p=cn.prepareStatement(s);
        ResultSet r=p.executeQuery();
        while(r.next())
        {
            %>
            <tr>
                <td><%= r.getString("name")%></td>
                <td><%= r.getString("sid")%></td>
                <td><%= r.getString("year")%></td>
                <td><%= r.getString("branch")%></td>
               
            </tr>
            <%
        }
            %>
        </table>
        
    </body>
</html>
