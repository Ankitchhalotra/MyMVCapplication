<%-- 
    Document   : Profile
    Created on : 13-Jan-2024, 12:20:23 am
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
        <title>JSP Page</title>
        <style>
        body {
            font-family: 'Times New Roman', Times, serif Arial, sans-serif;
            background-color: aqua;
        }

        table {
          background-color: #f2f2f2;
            width: 40%;
            border-collapse: collapse;
            margin: 20px;
            margin-left: 350px;
            margin-top: 70px;
        }

        th, td {
          background-color: #f2f2f2;
            border: 2px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
    </head>
    <body>
        <table>
        <caption><h1>User Data</h1></caption>
        <tr>
            <th>Id :</th>
            <td id="field1"><%=al.get(0)%></td>
        </tr>
        <tr>
            <th>Name :</th>
            <td id="field2"><%=al.get(1)%></td>
        </tr>
        <tr>
            <th>Father Name :</th>
            <td id="field3"><%=al.get(2)%></td>
        </tr>
        <tr>
            <th>Degree :</th>
            <td id="field4"><%=al.get(3)%></td>
        </tr>
        <tr>
            <th>Course :</th>
            <td id="field5"><%=al.get(4)%></td>
        </tr>
        <tr>
            <th>Address :</th>
            <td id="field6"><%=al.get(5)%></td>
        </tr>
        <tr>
            <th>Contact :</th>
            <td id="field7"><%=al.get(6)%></td>
        </tr>
        <tr>
          <td colspan="2">
            <a href="Update.jsp"><input type="submit" value="UPDATE"></a>
          </td>
        </tr>
    </table>

    </body>
</html>
