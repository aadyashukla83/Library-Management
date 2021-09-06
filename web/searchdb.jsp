<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="orange">
        <h1>Get book Record</h1>
        <table  border="1">
            <tr>
                <td>BID</td>
                <td>BNAME</td>
                <td>WRITER</td>
                <td>TECHNOLOGY</td>
                <td>DEPARTMENT</td>
            </tr>
            <%
                String bid=request.getParameter("bid");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
        String s="select * from bookentry where bid="+bid+"";
        PreparedStatement p=cn.prepareStatement(s);
        ResultSet r=p.executeQuery();
        while(r.next())
        {
            %>
            <tr>
                <td><%= r.getString("bid")%></td>
                <td><%= r.getString("bname")%></td>
                <td><%= r.getString("wname")%></td>
                <td><%= r.getString("tech")%></td>
                <td><%= r.getString("department")%></td>
            </tr>
            <%
        }
            %>
        </table>
        
    </body>
</html>
