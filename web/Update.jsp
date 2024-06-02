<%-- 
    Document   : Update
    Created on : 15-Jan-2024, 1:07:24 pm
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
        <form action="UpdateProfileServlet" method="post">
        <table>
        <caption><h1>Update Data</h1></caption>
        <tr>
            <th>Id :</th>
            <td id="field1"> <%=al.get(0)%> </td>
        </tr>
        <tr>
            <th>Name :</th>
            <td id="field2">
                <input type="text" value="<%=al.get(1)%>" name="name">
            </td>
        </tr>
        <tr>
            <th>Father Name :</th>
            <td id="field3">
                <input type="text" value="<%=al.get(2)%>" name="fname">
            </td>
        </tr>
        <tr>
            <th>Degree :</th>
            <td id="field4">
                <input type="text" value="<%=al.get(3)%>" name="degree">
            </td>
        </tr>
        <tr>
            <th>Course :</th>
            <td id="field5">
                <input type="text" value="<%=al.get(4)%>" name="course">
            </td>
        </tr>
        <tr>
            <th>Address :</th>
            <td id="field6">
                <input type="text" value="<%=al.get(5)%>" name="address">
            </td>
        </tr>
        <tr>
            <th>Contact :</th>
            <td id="field7">
                <input type="text" value="<%=al.get(6)%>" name="contact">
            </td>
        </tr>
        <tr>
            <th>Email :</th>
            <td id="field8"><%=al.get(7)%></td>
        </tr>
        <tr>
          <td colspan="2">
          <a><input type="submit" value="UPDATE"></a>
          </td>
        </tr>
    </table>
    </form>
    </body>
</html>
