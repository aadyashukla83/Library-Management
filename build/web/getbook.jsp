<%@page import="beans.Book" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Book b=(Book)session.getAttribute("book");
        String s=b.getSid();
        String k=b.getBid();
        String i=b.getIssuedate();
        String r=b.getReturndate();
        String a=b.getAmount();
        
        %>
        <fieldset>
            <legnd>
                <h1>Issue Book Details</h1>
            </legnd>
            <table>
                <tr><td>Student ID:</td><td><%= s%></td></tr>
                <tr><td>Book ID:</td><td><%= k%></td></tr>
                <tr><td>Issue Date:</td><td><%= i%></td></tr>
                <tr><td>Return Date:</td><td><%= r%></td></tr>
                <tr><td>Amount:</td><td><%= a%></td></tr>
            </table>
            <button onclick="window.print()">Print</button>
            <a href="index.jsp">Home</a>
        </fieldset>
                
    </body>
</html>
