

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carpooling.registration.Riders;

/**
 * Servlet implementation class RiderServlet1
 */
public class RiderServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RiderServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
