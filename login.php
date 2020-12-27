<?php

?>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>login</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
  <style>
	  body {
		background-color:white;
		font-family: Arial;
  color: white;
}

#header{
	background:black;
	height:80px;

}

.split {
  height: 80%;
  width: 50%;
  position: fixed;
  z-index: 1;

  top: 100px;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color:green;
}

.right {
  right: 0;
  background-color:brown;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}
  </style>
	
</head>

<body>

<header id="header" class="header-scroll top-header headrom">
<nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <strong>FOODSHALA</strong> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
							<li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
							<?php
						if(empty($_SESSION["user_id"])) // if user is not login
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">signup</a> </li>';
							}
						else
							{
									//if user is login
									
									echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">your orders</a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">logout</a> </li>';
							}

						?>
							 
                        </ul>
						 
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
</div>
  <div class="split left">
  <div class="centered">
    <img src="rest.png" alt="Avatar woman">
    <h2>LOGIN AS RESTAURANT</h2>
    <p><a href="restaurant-admin/index.php" style="color:white;">login Food</a></p>
  </div>
</div>

<div class="split right">
  <div class="centered">
    <img src="user.png" alt="Avatar man">
    <h2>LOGIN AS USER</h2>
    <p><a href="customerlogin.php" style="color:white;">Login Peeps</p>
  </div>
</div>

</body>

</html>
