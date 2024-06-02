<%-- 
    Document   : DashBoard
    Created on : 13-Jan-2024, 12:08:29 am
    Author     : ankit
--%>

<%@page import="java.util.ArrayList" contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList al = (ArrayList)session.getAttribute("data");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dash-Board</title>
        <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Times New Roman', Times, serif;
      background-color: #f5f5f5;
    }

    nav {
      background-color: #4CAF50;
      overflow: hidden;
    }

    nav h1 {
      text-align: center;
      color: white;
      padding: 15px;
      margin: 0;
    }

    nav a {
      float: left;
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    nav a:hover {
      background-color: #ddd;
      color: black;
    }

    h1 {
      text-align: center;
      background-color: #3498db;
      color: white;
      padding: 20px;
      margin-top: 20px;
    }

    a.button {
      display: block;
      width: 200px;
      margin: 20px auto;
      padding: 10px;
      text-align: center;
      text-decoration: none;
      background-color: #3498db;
      color: white;
      border-radius: 5px;
    }
  </style>
    </head>
    
    <body>
        <%
        response.setHeader("Cache-Control","No-Cache");
        response.setHeader("Cache-Control","No-Store");
        
        Object email = session.getAttribute("email");
        if(email != null){
        %>
    <nav>
    <h1>Welcome to HomePage <%=al.get(1)%></h1>
    <a href="#">Home</a>
    <a href="Profile.jsp">Profile</a>
    <a href="PassChange.jsp">Change-Password</a>
    <a href="">Log-Out</a>
    </nav>

    <h1>Thank-You For Visiting</h1>

    <a href="LogOutServlet" class="button">Log-Out</a>
    
    <%
        } else {
     response.sendRedirect("login.html");
    }
    %>
    </body>
</html>
