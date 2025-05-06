package com.example.fitnesssystem.servlets;

import com.example.fitnesssystem.services.UsersManagers;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "deleteUser", value = "/delete-user")
public class DeleteUser extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int userID = Integer.parseInt(request.getParameter("user-id"));

        UsersManagers.deleteUser(userID);

        response.sendRedirect("users-admin-view.jsp");
    }

}