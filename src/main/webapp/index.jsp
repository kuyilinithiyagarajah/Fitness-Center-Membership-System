<%@ page import="com.example.fitnesssystem.services.UsersManagers" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    UsersManagers.readUsers();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Membership Login</title>
    <script src="https://cdn.tailwindcss.com"></script>


    <style>
        @keyframes backgroundAnimation {
            0% { background-image: url('images/image1.jpg');}
            25% { background-image: url('images/image2.jpg');}
            50% { background-image: url('images/image3.jpg');}
            75% { background-image: url('images/image4.jpg');}
            100% { background-image: url('images/image1.jpg');}

        }

        body {
            animation: backgroundAnimation 20s infinite ease-in-out;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            position: relative;
        }

        body::before {
            content: "";
            position: fixed;
            inset: 0;
            background: linear-gradient(to bottom right, rgba(0,0,0,0.6) , rgba(0,0,0,0.2));
            z-index: -1;
        }

        input:focus {
            outline: none;
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59,130,246,0.3);
        }

        button:hover {
            transform: scale(1.05);
            transition: 0.3s ease;
        }



        @keyframes fadeIn {
            0% {opacity: 0;}
            100% {opacity: 1;}
        }
        input:focus {
            outline: none;
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59,130,246,0.3);
        }

        button:hover {
            transform: scale(1.05);
            transition: 0.3s ease;
        }
        .logo {
            position: absolute;
            top: 20%;
            left: 20%;
            width: 70%;
            height: 70%;
            animation: bounceLogo 1.5s infinite;
        }

        @keyframes bounceLogo {
            0%,100% {transform: translate(0);}
            50% {transform: translate(-10px);}
        }

        .fab-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #3498db;
            padding: 20px;
            border-radius: 50%;
            color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            font-size: 24px;
            transition: background-color 0.3s;
        }

        .fab-button:hover {
            background-color: #2980b9;
        }


    </style>

</head>

<body class="flex justify-center items-center">

<div class="backdrop-blur-md bg-white/30 border-white/20 p-6 rounded-xl shadow-xl w-96 z-10">
    <h2 class="text-2xl font-bold text-center text-white mb-2">Fitness Membership Login</h2>

    <p class="text-sm text-center text-gray-200 mb-4">Welcome back! Please log in to continue.</p>

    <form action="login-servlet" method="post">
        <label class="block mb-2 font-medium text-white">Email</label>
        <input type="email" name="email" class="w-full p-2 border rounded-lg mb-3" required>

        <label class="block mb-2 font-medium text-white">Password</label>
        <input type="password" name="password" class="w-full p-2 border rounded-lg mb-3" required>

        <button type="submit" class="w-full bg-blue-500 text-white p-2 rounded-lg hover:bg-blue-600">Login</button>

        <p class="text-center text-white mt-4">Don't have an account? <a href="userRegister.jsp" class="font-bold">Register now</a></p>
    </form>
</div>



</body>
</html>

