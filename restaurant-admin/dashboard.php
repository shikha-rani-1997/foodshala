<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();
if(empty($_SESSION["adm_id"]))
{
	header('location:index.php');
}
else
{
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>restaurant-admin</title>
    <!-- Bootstrap Core CSS -->
    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
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

.nav-item .a{
    color:white;
    float:left;
}
</style>
   
</head>

<body class="fix-header">
<header id="header" class="header-scroll top-header headrom">
<nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="../index.php"> <strong>FOODSHALA</strong> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="allrestraunt.php">List<span class="sr-only">(current)</span></a> </li>
							<li class="nav-item"> <a class="nav-link active" href="add_restraunt.php">add-Rest<span class="sr-only"></span></a> </li>
                            <li class="nav-item"><a href="add_menu.php" class="nav-link active">add-menu</a></li>
                            <li class="nav-item"><a href="all_orders.php" class="nav-link active">orders</a> </li>
							<li class="nav-item"><a href="logout.php" class="nav-link active">logout</a></li>

							 
                        </ul>
						 
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>

        <!-- Page wrapper  -->
        <div style="text-align:center;">
            <br />
            <br />
            <br/>
            <br/>
           <h1>WELCOME TO THE RESTAURANT LIST VIEWS.</h1>
            
        <!-- End Page wrapper  -->
    </div>
 
</body>

</html>
<?php
}
?>