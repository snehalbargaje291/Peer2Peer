package com.carpooling.registration;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/RideServlet")
public class RidesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Ride> rides = new ArrayList<>();
        List<Riders> riders = fetchRidersFromDatabase();

        // Set the list of riders as an attribute in the request
        request.setAttribute("riders", riders);


        try {
            // Database connection setup (Replace with your database configuration)
            String jdbcUrl = "jdbc:mysql://localhost:3306/carpooling";
            String dbUser = "root";
            String dbPassword = "mca123";

            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Fetch data from the database
            String sql = "SELECT name, profile_photo, date, pickup, pickuptime, drop_location, droptime, charges, available_seats FROM rides";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Ride ride = new Ride();
                ride.setName(resultSet.getString("name"));
                ride.setProfilePhoto(resultSet.getString("profile_photo"));
                
                
                
                ride.setDate(resultSet.getString("date"));
                ride.setPickup(resultSet.getString("pickup"));
                ride.setPickupTime(resultSet.getString("pickuptime"));
                ride.setDropLocation(resultSet.getString("drop_location"));
                ride.setDropTime(resultSet.getString("droptime"));
                ride.setCharges(resultSet.getString("charges"));
                ride.setAvailableSeats(resultSet.getInt("available_seats"));

                rides.add(ride);
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Pass the retrieved data to the JSP
        request.setAttribute("rides", rides);
        request.getRequestDispatcher("/rides.jsp").forward(request, response);
    }

public List<Riders> fetchRidersFromDatabase() {
    List<Riders> riders = new ArrayList<>();
    
    try (Connection conn = getConnection()) {
        String query = "SELECT name, phone FROM user Where id = ?";
        try (PreparedStatement statement = conn.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Riders rider = new Riders();
                rider.setName(resultSet.getString("name"));
                rider.setPhone(resultSet.getString("phone"));
                riders.add(rider);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return riders;
}

private Connection getConnection() {
    Connection connection = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL JDBC driver
        String jdbcUrl = "jdbc:mysql://localhost:3306/carpooling";
        String dbUser = "root";
        String dbPassword = "mca123";
        connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
    return connection;
}

}

