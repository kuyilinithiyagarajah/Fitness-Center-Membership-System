<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.fitnesssystem.models.User" %>
<%
    User user = (User) session.getAttribute("user");  // Ensure user session is set
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect if not logged in
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex justify-center items-center h-screen">

<div class="bg-white p-6 rounded-xl shadow-lg w-96">
    <h2 class="text-2xl font-bold text-center text-blue-600 mb-6">User Profile</h2>

    <div class="space-y-2">
        <p><span class="font-semibold">Name:</span> <%= user.getName() %></p>
        <p><span class="font-semibold">Email:</span> <%= user.getEmail() %></p>
        <p><span class="font-semibold">Age:</span> <%= user.getAge() %></p>
        <p><span class="font-semibold">Gender:</span> <%= user.getGender() %></p>
        <p><span class="font-semibold">Contact Number:</span> <%= user.getcontactNumber() %></p>
        <p><span class="font-semibold">Address:</span> <%= user.getAddress() %></p>
        <p><span class="font-semibold">Weight:</span> <%= user.getWeight() %> kg</p>
        <p><span class="font-semibold">Height:</span> <%= user.getHeight() %> cm</p>
    </div>

    <div class="mt-6 flex justify-between">
        <a href="home.jsp" class="text-blue-500 hover:underline">← Back to Home</a>
        <a href="editeProfile.jsp" class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600">Edit Profile</a>
    </div>
</div>

</body>
</html>
