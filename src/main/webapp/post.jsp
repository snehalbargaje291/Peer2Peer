
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

<input type = "hidden" id="status" value="<%= request.getAttribute("status")%>">

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
                    <li class="nav-item dropdown" style="margin-right: 10%;">
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#getride">Get Ride</a></li>
                            <li><a class="dropdown-item" href="#postride">Post Ride</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="nav-item dropdown" style="margin-right: 10%;">
                    <a class="nav-link dropdown-toggle" href="#User" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="./IMG/account.png" width="40em" height="40em">
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#Profile">Profile</a></li>
                        <li><a class="dropdown-item" href="#I-Drive">I Drive</a></li>
                        <li><a class="dropdown-item" href="#I-Ride">I Ride</a></li>
                        <li><a class="dropdown-item" href="#logout">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </div>
  </nav>
  <div class="container" style="background-image: url('./IMG/search3.png'); background-size:cover; background-position:bottom; padding: 0 1% 1% 1%;">
    <h2 style="text-align: center;">POST A RIDE</h2><br>
    <form action="postservlet" method="post" class="mb-5" enctype="multipart/form-data">
    
    Profile Photo: <input type="file" name="profilePhoto" required><br>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group mb-3">
            <label for="user_id_and_name"><b>Name:</b></label>
            <input type="text" class="form-control" id="name" name="name" required>
          </div>
        </div>
        <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="date"><b>Date:</b></label>
              <input type="date" class="form-control" id="date" name="date" required>
            </div>
          </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="table-responsive">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Pickup at:</th>
                  <th>PickupTime</th>
                </tr>
              </thead>
              <tbody id="routes">
                <tr>
                  <td><input type="text" class="form-control" name="pickup" ></td>
                  <td><input type="time" class="form-control" name="ptime"></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="table-responsive">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Drop at:</th>
                  <th>DropTime</th>
                </tr>
              </thead>
              <tbody id="routes">
                <tr>
                  <td><input type="text" class="form-control" name="drop"></td>
                  <td><input type="time" class="form-control" name="DropTime"></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group mb-3">
            <label for="charges"><b>Charges in Rs.</b></label>
            <input type="number" class="form-control" id="charges" name="charges" required>
          </div>
        </div>
        <div class="col-md-6">
          <label for="seats"><b>Seats:</b></label>
          <select class="form-control" id="seats" name="seat">
              <option selected value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
          </select>
        </div>
      </div>

      <div class="row">
        <div class="col-md-1">
          <button type="back" class="btn btn-success" onclick="location.href='index.jsp'"> Back </button>
        </div>
        <div class="col-md-1">
          <button type="submit" class="btn btn-success" onclick="location.href='sucess.jsp'">Submit</button>
        </div>
      </div>
    </form>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  
</body>
</html>
