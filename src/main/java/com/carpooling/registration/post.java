package com.carpooling.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/postservlet")
@MultipartConfig
public class post extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        Part profilePhotoPart = request.getPart("profilePhoto");
        String date = request.getParameter("date");
        String pickup = request.getParameter("pickup");
        String pickuptime = request.getParameter("ptime");
        String drop = request.getParameter("drop");
        String droptime = request.getParameter("DropTime");
        double charges = Double.parseDouble(request.getParameter("charges"));
        int seat = Integer.parseInt(request.getParameter("seat"));

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carpooling?useSSL=false&allowPublicKeyRetrieval=true", "root", "mca123");

            String insertSQL = "INSERT INTO rides (name, profile_photo, date, pickup, pickuptime, drop_location, droptime, charges, available_seats) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(insertSQL);

            pstmt.setString(1, name);
            pstmt.setBinaryStream(2, profilePhotoPart.getInputStream(), (int) profilePhotoPart.getSize());
            pstmt.setString(3, date);
            pstmt.setString(4, pickup);
            pstmt.setString(5, pickuptime);
            pstmt.setString(6, drop);
            pstmt.setString(7, droptime);
            pstmt.setDouble(8, charges);
            pstmt.setInt(9, seat);

            pstmt.executeUpdate();

//            response.getWriter().println("Ride posted successfully!");
            response.sendRedirect("sucess.jsp");
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
