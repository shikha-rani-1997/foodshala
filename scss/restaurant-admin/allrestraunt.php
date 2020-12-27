<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
     <title>restaurant-list</title>
    
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
                            <li class="nav-item"><a href="add_menu.php" class="nav-link active">add-menu</a></li>
                            <li class="nav-item"><a href="add_restraunt.php" class="nav-link active">add-restro</a></li>
                            <li class="nav-item"><a href="all_orders.php" class="nav-link active">orders</a> </li>
							<li class="nav-item"><a href="logout.php" class="nav-link active">logout</a></li>

							 
                        </ul>
						 
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
   
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Restaurant list</h3> </div>
               
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        
						
						     <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">All stores data</h4>
                               								
                                <div class="table-responsive m-t-40">
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
											 <th>Cat</th>
                                                <th>Store-Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Url</th>
                                                <th>Open Hrs</th>
                                                <th>Close Hrs</th>
												<th>Open Days</th>
												<th>Address</th>
												<th>Store-Image</th>
												<th>Date</th>
												
												  
                                            </tr>
                                        </thead>
                                        <tbody>
										
                                           
                                               	<?php
												$sql="SELECT * FROM restaurant order by rs_id desc";
												$query=mysqli_query($db,$sql);
												
													if(!mysqli_num_rows($query) > 0 )
														{
															echo '<td colspan="11"><center>No Srores-Data!</center></td>';
														}
													else
														{				
																	while($rows=mysqli_fetch_array($query))
																		{
																					
																				$mql="SELECT * FROM res_category where c_id='".$rows['c_id']."'";
																					$res=mysqli_query($db,$mql);
																					$row=mysqli_fetch_array($res);
																				
																					echo ' <tr><td>'.$row['c_name'].'</td>
																								<td>'.$rows['title'].'</td>
																								<td>'.$rows['email'].'</td>
																								<td>'.$rows['phone'].'</td>
																								<td>'.$rows['url'].'</td>
																								
																								
																								<td>'.$rows['o_hr'].'</td>
																								<td>'.$rows['c_hr'].'</td>
																								<td>'.$rows['o_days'].'</td>
																								
																								<td>'.$rows['address'].'</td>
																								
																								<td><div class="col-md-3 col-lg-8 m-b-10">
																								<center><img src="Res_img/'.$rows['image'].'" class="img-responsive radius"  style="min-width:150px;min-height:100px;"/></center>
																								</div></td>
																								
																								<td>'.$rows['date'].'</td>
																									 </tr>';
																					 
																						
																						
																		}	
														}
												
											
											?>
                                            
                                           
                                 
                                                        
                                                            
                                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
						
						 </div>
                      
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End PAge Content -->
            </div>
          
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->

</body>

</html>