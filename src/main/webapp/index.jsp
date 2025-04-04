<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Mmbership Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex justify-center items-center h-screen">

<div class="bg-white p-6 rounded-lg shadow-lg w-96">
    <h2 class="text-xl font-bold text-center mb-4">Fitness Membership Login</h2>

    <form action="login-servlet" method="post">


        <label class="block mb-2 font-medium">Email</label>
        <input type="email" name="email" class="w-full p-2 border rounded-lg mb-3" required>

        <label class="block mb-2 font-medium">Password</label>
        <input type="password" name="password" class="w-full p-2 border rounded-lg mb-3" required>

        <button type="submit" class="w-full bg-blue-500 text-white p-2 rounded-lg hover:bg-blue-600">login</button>
        <p class="text-center"> Dont have account ? <a href="userRegister.jsp" class="font-bold"> Register now</a></p>
    </form>
</div>

</body>
</html>

