<%-- 
    Document   : PassChange
    Created on : 25-Jan-2024, 9:37:37 pm
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Change-Password Page</title>
    </head>
    <body>
        <form action="PassChangeServlet" method="post">
            <input type="password" name="opass">
            <input type="password" name="npass">
            <input type="password" name="cpass">
            <input type="submit" value="CHANGE">
        </form>
    </body>
</html>
