<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.fitnesssystem.models.User" %>
<%@ page import="com.example.fitnesssystem.services.UsersManagers" %><%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  Created by IntelliJ IDEA.
  User: user
  Date: 4/8/2025
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard - Fitness Membership</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4ff;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #1e3a8a;
            padding: 20px;
            color: white;
            text-align: center;
            font-size: 26px;
        }

        .container {
            padding: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 16px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #3b82f6;
            color: white;
        }

        tr:hover {
            background-color: #e0efff;
        }

        .delete-btn {
            padding: 6px 12px;
            background-color: #ef4444;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .delete-btn:hover {
            background-color: #dc2626;
        }
    </style>


</head>
<body>

<header>Admin Dashboard - Fitness Membership System</header>

<div class="container">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Weight</th>
            <th>Height</th>
            <th>Action</th>
        </tr>

        <%
            ArrayList<User> users = UsersManagers.getUsers();
            if (users != null && !users.isEmpty()) {
                for (User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getName() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getAge() %></td>
            <td><%= user.getGender() %></td>
            <td><%= user.getContactNumber() %></td>
            <td><%= user.getAddress() %></td>
            <td><%= user.getWeight() %></td>
            <td><%= user.getHeight() %></td>
            <td>
                <form action="delete-user" method="POST" onSubmit="return confirm('Are you sure you want to delete this user ?')">
                    <input type="hidden" name="user-id" value="<%=user.getId()%>">
                    <input type="submit" value="Delete"  class="delete-btn">
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="10">No users available.</td>
        </tr>
        <% } %>
    </table>
</div>

</body>
</html>