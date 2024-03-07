<%@page import="com.mysql.cj.jdbc.Blob"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.DataSource"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.awt.image.BufferedImage"%>
<%@ page import="java.io.ByteArrayInputStream"%>
<%@ page import="java.awt.image.BufferedImage"%>
<%@ page import="java.io.OutputStream"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.util.Base64"%>


<!DOCTYPE html>
<html>
<head>
<title>Data Display</title>
</head>
<body>
	<h1>Rider Information</h1>
	<table border="1">
		<tr>
			<th>name</th>
			<th>profile_photo</th>
			<th>date</th>
			<th>pickup</th>
			<th>pickuptime</th>
			<th>drop_locatione</th>
			<th>droptime</th>
			<th>charges</th>
			<th>available_seats</th>
		</tr>
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carpooling", "root", "mca123");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(
			"SELECT name, profile_photo, date, pickuptime, drop_location, droptime, charges, available_seats, charges FROM rides");

			while (rs.next()) {
		%>
		<tr>

			<td><%=rs.getString("name")%></td>
			

			<%
			java.sql.Blob blob = rs.getBlob("profile_photo");

			// Convert the BLOB to a byte array
			byte[] imageBytes = blob.getBytes(1, (int) blob.length());
			
			// Convert the byte array to a Base64-encoded string
            String base64Image = Base64.getEncoder().encodeToString(imageBytes);



			
			%>

			<td><img src="data:image/jpeg;base64,<%= base64Image %>" alt="Image" width="50" /><td>
			
			
			<td><%=rs.getString("date")%></td>
			<td><%=rs.getString("date")%></td>
			<td><%=rs.getString("pickuptime")%></td>
			<td><%=rs.getString("drop_location")%></td>
			<td><%=rs.getString("droptime")%></td>
			<td><%=rs.getString("charges")%></td>
			<td><%=rs.getString("available_seats")%></td>
		</tr>
		<%
		}
		rs.close();
		stmt.close();
		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
</body>
</html>
