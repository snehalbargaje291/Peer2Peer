<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./IMG/LOGO.png" type="image/png">
    <title>MeraSathi</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" shref="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4oD6Nv178RqrwfAkyRyFZGR2w3lJ2x3E&libraries=places"></script>
    
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
        
        .pac-container {
    		z-index: 10000;
}
        

    </style>
    
</head>
<!--<body style="background-image: url('./IMG/carousel5\ \(2\).jpg'); background-size:cover; background-position: center;">-->
<body onload="initAutocomplete()">
>
    <nav class="navbar navbar-expand-lg bg-body-tertiary"> <!--class="navbar navbar-expand-lg bg-body-tertiary"-->
        <div class="container-fluid" style="margin-left: 5%;">
            <a class="navbar-brand" href="#Logo"><img src="./IMG/LOGO.png" alt="LOGO" width="70em" height="70em">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><img src="./IMG/menu.png" alt="burg" width="50em" height="50em"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#Home">MeraSathi</a>
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
                <!--<form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>-->
            </div>
        </div>
    </nav>

    <marquee style="background-color: rgb(236, 47, 47); color: white; font-size: larger;"><em>Welcome to <b>MeraSathi.</b> Find a ride or offer one today on <b>MeraSathi!</b></em></marquee>

    <div class="container" style=" background-image: url('./IMG/search3.png'); background-size:cover; background-position:bottom; padding:5% 0% 20% 0%;">
        <!--<h2 class="text-center mt-5">Search Your Ride</h2>-->
        <form class="row g-3 mt-5" style="display: flex; justify-content: center;">
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

    <div class="get-post" style="margin: 0% 10% 0% 10%;">
        <div class="card mb-3" style="width: 100%; border: none;">
            <div class="row no-gutters" style="flex-direction: row-reverse;">
                <div class="col-md-4">
                    <img src="./IMG/carousel5 (3).jpg" class="card-img" alt="get-ride">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Get yourself a Ride</h5>
                        <p class="card-text">Hi, I'm looking for a ride from Aurangabad to Pune on 30/09/2023 at 12:00 PM. <br>I'm willing to pay 500 Rs. Please let me know if you have a ride available</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card mb-3" style="width: 100%; border: none;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="./IMG/carousel3.jpg" class="card-img" alt="get-ride">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Post a Ride</h5>
                        <p class="card-text">I'm giving a ride from Aurangabad to Pune on 30/09/2023 at 12:00 PM in my Honda Civic. I plan to take the NH 61 highway. The price is 500 Rs. Contact me if you're interested!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer" id="footer">
        <div class="footer-column">
          <h3>About Us <img src="./IMG/information.png" width="40em" height="40em"></h3>
          <p>We are a company that provides rides to people.</p>
          <a class="nav-item">
            <a class="nav-link" style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Know more...
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
        </a>
        </div>
        <div class="footer-column">
          <h3>Contact Us <img src="./IMG/communicate.png" width="40em" height="40em"></h3>
          <p>
            Address: 123 Main Street, Anytown, CA 12345<br>
            Phone: (123) 456-7890<br>
            Email: <a href="mailto:info@example.com">info@example.com</a>
          </p>
        </div>
        <div class="footer-column">
            <h3>Carpool Routes<img src="./IMG/road-map.png" width="40em" height="40em"></h3>
            <p>
              Address: 123 Main Street, Anytown, CA 12345<br>
              Phone: (123) 456-7890<br>
              Email: <a href="mailto:info@example.com">info@example.com</a>
            </p>
          <h3>Social Media <img src="./IMG/social-media.png" width="40em" height="40em"></h3>
          <ul class="social-media-links">
            <li><a href="https://www.facebook.com/example/"><i class="fa fa-facebook"></i></a></li>
            <li><a href="https://www.twitter.com/example/"><i class="fa fa-twitter"></i></a></li>
            <li><a href="https://www.linkedin.com/company/example/"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
    </footer>
      

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script>
    document.getElementById('date').min = new Date().toISOString().split('T')[0];
</script>
<script>
function initAutocomplete() {
    var input = document.getElementById('from');
    var autocomplete = new google.maps.places.Autocomplete(input);

    autocomplete.addListener('place_changed', function() {
        var place = autocomplete.getPlace();
        // You can access place details like place.name, place.address_components, etc.
        // Use this data as needed in your Java code.
    });
}
</script>

<script>
    function redirectToRidesPage() {
        // Use JavaScript to redirect to "rides.jsp"
        window.location.href = "rides.jsp";
    }
</script>



</html>