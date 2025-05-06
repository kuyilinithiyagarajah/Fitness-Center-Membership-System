<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.fitnesssystem.models.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
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
<body class="bg-gray-100 flex justify-center items-start min-h-screen py-10">

<div class="bg-white p-6 rounded-xl shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold text-center text-blue-600 mb-6">User Profile</h2>

    <div class="flex justify-center mb-4">
        <% if(user.getGender().equalsIgnoreCase("Male")) { %>
        <img alt="male-profile-img" src="<%=request.getContextPath()%>/images/image5.jpg"
             class="rounded-full" style="width:150px; height:150px;">
        <% } else { %>
        <img alt="female-profile-img" src="<%=request.getContextPath()%>/images/image6.jpg"
             class="rounded-full" style="width:150px; height:150px;">
        <% } %>
    </div>

    <div class="space-y-2 text-sm sm:text-base">
        <p><span class="font-semibold">Name:</span> <%= user.getName() %></p>
        <p><span class="font-semibold">Email:</span> <%= user.getEmail() %></p>
        <p><span class="font-semibold">Age:</span> <%= user.getAge() %></p>
        <p><span class="font-semibold">Gender:</span> <%= user.getGender() %></p>
        <p><span class="font-semibold">Contact Number:</span> <%= user.getContactNumber() %></p>
        <p><span class="font-semibold">Address:</span> <%= user.getAddress() %></p>
        <p><span class="font-semibold">Weight:</span> <%= user.getWeight() %> kg</p>
        <p><span class="font-semibold">Height:</span> <%= user.getHeight() %> cm</p>
    </div>

    <div class="mt-6 flex flex-col gap-3">
        <a href="home.jsp" class="text-blue-500 hover:underline text-center">← Back to Home</a>

        <a href="editeProfile.jsp"
           class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600 text-center">
            Edit Profile
        </a>

        <form action="unregister-user" method="POST"
              onSubmit="return confirm('Are you sure you want to delete this user?')" class="text-center">
            <input type="hidden" name="user-id" value="<%= user.getId() %>">
            <input type="submit" value="Delete" class="delete-btn">
        </form>
    </div>
</div>

</body>
</html>
