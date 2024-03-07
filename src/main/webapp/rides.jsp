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
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./IMG/LOGO.png" type="image/png">
        <title>MeraSathi</title>
        <style>
          .form-label{
                font-weight: bolder;
                font-size: 1.5em;
                color: black;
            }
            .nav-item{
                font-weight: bolder;
                font-size: large;
            }
            a{
                color: rgb(236, 47, 47);
                font-weight: bolder;
            }
            .modal-body{
                font-weight: lighter;
            }
            
            .footer {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background-color: #f2f2f2;
                padding: 20px;
            }
      
            .footer-column {
                flex: 1;
                text-align: center;
            }
      
            h3 {
                margin-top: 0;
            }
      
            .social-media-links {
                list-style: none;
                padding: 0;
            }
      
            .social-media-links li {
                display: inline-block;
                margin-right: 10px;
            }
      
            .social-media-links a {
                color: #000;
            }
      
            .social-media-links a:hover {
                color: #333;
            }
      
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary"> <!--class="navbar navbar-expand-lg bg-body-tertiary"-->
        <div class="container-fluid" style="margin-left: 5%;">
            <a class="navbar-brand" href="#Logo"><img src="./IMG/LOGO.png" alt="LOGO" width="70em" height="70em"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><img src="./IMG/menu.png" alt="burg" width="50em" height="50em"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../HTML/Home.html">MeraSathi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            AboutUs
                        </a>
                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">About MeraSathi</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <b>MeraSathi</b> is a carsharing company that makes it easy to get access to a car when you need one, without the hassle of owning one. We offer a wide variety of cars to choose from, all of which are well-maintained and insured.
    
                                        <br>Our carsharing service is perfect for people who live in urban areas and don't need a car for their daily commute. It's also a great option for people who travel frequently and need a car to get around their destination.
                                        
                                        <br>To use our carsharing service, simply create an account and reserve a car online or through our mobile app. You can pick up the car at one of our convenient locations and return it when you're finished.
                                        
                                        <br>We offer a variety of membership plans to fit your needs, and our rates are very competitive. We also offer discounts for students, seniors, and military members.
                                        
                                        <br><b>Here are some of the benefits of using our carsharing service:</b>
                                        <ul>
                                        <li>It's convenient. You can get a car when you need one, without having to worry about parking or maintenance.</li>
                                        <li>It's affordable. Our rates are very competitive, and we offer discounts for students, seniors, and military members.</li>
                                        <li>It's environmentally friendly. Carsharing helps to reduce traffic congestion and air pollution.</li>
                                        </ul>
                                        We're committed to providing our customers0 with the best possible carsharing experience. That's why we offer a variety of features and benefits, including:
                                        <ul>
                                        <li>A wide variety of cars to choose from</li>
                                        <li>Convenient locations</li>
                                        <li>Easy online and mobile booking</li>
                                        <li>Competitive rates</li>
                                        <li>Discounts for students, seniors, and military members</li>
                                        </ul>
                                        If you're looking for a convenient, affordable, and environmentally friendly way to get around, then <b>MeraSathi</b> is the perfect carsharing service for you. Sign up today and start saving!
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Understood</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#footer"><b>ContactUs</b></a>
                    </li>
                    <li class="nav-item dropdown" style="margin-right: 10%;">
                        <a class="nav-link dropdown-toggle" href="#User" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <!--<img src="./IMG/inspection.png" alt="ride" width="40em" height="40em">-->
                            Ride
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="rides.jsp">Get Ride</a></li>
                            <li><a class="dropdown-item" href="login.jsp">Post Ride</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="nav-item dropdown" style="margin-right: 10%;">
                    <a class="nav-link dropdown-toggle" href="#User" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="./IMG/account.png" width="40em" height="40em">
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="login.jsp">Log-In</a></li>
                        <li><a class="dropdown-item" href="registration.jsp">Sign-Up</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <!--<h2 class="text-center mt-5">Search Your Ride</h2>-->
        <form action="RideServlet" method="post" class="row g-3 mt-5" style="display: flex; justify-content: center;">
            <div class="col-md-2">
                <label for="from" class="form-label">From</label>
                <select class="form-select" id="seats">
                    <option selected value="1">Aurangabad</option>
                    
                </select>
            </div>
            <div class="col-md-2">
                <label for="to" class="form-label">To</label>
                <select class="form-select" id="seats">
                    <option selected value="1">Mumbai</option>
                    <option value="2">Pune</option>
                    <option value="3">Nagpur</option>
                </select>
            </div>
            <div class="col-md-3">
                <label for="date" class="form-label">Date</label>
                <input type="date" class="form-control" id="date">
            </div>
            <div class="col-md-2">
                <label for="seats" class="form-label">Seats</label>
                <select class="form-select" id="seats">
                    <option selected value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
            </div>
            <div class="col-md-2">
                <label for="submit" class="form-label">&nbsp;</label>
			    <button type="button" class="form-control btn btn-primary" onclick="redirectToRidesPage()">Submit</button>
            </div>
        </form>
    </div>
    <div class="table-responsive" style="padding: 5% 5% 0% 5%;">
        <h1>Get Yourself a Ride !</h1><br>
        <table class="table table-striped table-bordered">
          <thead>
            <tr>

              <th>Name</th>
              <th>Profile</th>
              <th>&nbsp;</th>
              <th>Date</th>
              <th>Pickup</th>
              <th>Expected Pick</th>
              <th>Drop At</th>
              <th>Expected Drop</th>
              <th>Charges</th>
              <th>Seats</th>
              
              <th>Accept</th>
              
              


              
            </tr>
          </thead>
          <tbody>
            
            
            
            
        <tr>
<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carpooling", "root", "mca123");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(
			"SELECT name, profile_photo, date, pickuptime, drop_location, droptime, charges, available_seats, charges FROM rides");

			while (rs.next()) {
		%>
        </tr>
        
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
			<td>Aurangabad</td>
			<td><%=rs.getString("pickuptime")%></td>
			<td><%=rs.getString("drop_location")%></td>
			<td><%=rs.getString("droptime")%></td>
			<td><%=rs.getString("charges")%></td>
			<td><%=rs.getString("available_seats")%></td>
			
			<td><button type="button" class="btn btn-primary" onclick="redirectToRidesPage()" >GetRide</button></td>
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

          </tbody>
        </table>
    </div>      
</body>
<script>
    document.getElementById('date').min = new Date().toISOString().split('T')[0];
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script>
    function redirectToRidesPage() {
        // Use JavaScript to redirect to "rides.jsp"
        window.location.href = "login1.jsp";
    }
</script>

</html>