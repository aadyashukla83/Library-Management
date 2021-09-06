<%@page import="beans.Book" %>
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
        String sid=request.getParameter("sid");
        String bid=request.getParameter("bid");
        String issuedate=request.getParameter("issuedate");
        String returndate=request.getParameter("returndate");
        String amount=request.getParameter("amount");
        Book b=new Book();
        b.setSid(sid);
        b.setBid(bid);
        b.setIssuedate(issuedate);
        b.setReturndate(returndate);
        b.setAmount(amount);
        session.setAttribute("book",b);
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelibrary","root","");
        String s="insert into issuebook values(?,?,?,?,?)";
        PreparedStatement p=cn.prepareStatement(s);
        p.setString(1, sid);
        p.setString(2,bid);
        p.setString(3, issuedate);
        p.setString(4, returndate);
        p.setString(5, amount);
        int i=p.executeUpdate();
        if(i>0)
        {
            response.sendRedirect("getbook.jsp");
        }

        
        %>
    </body>
</html>
