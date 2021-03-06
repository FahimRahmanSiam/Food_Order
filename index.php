<?php
	require_once('db/connect.php');
?>

<?php 

  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['email']);
  	header("location: login.php");
  }
?>

<!doctype html>
<html><head>
<meta charset="utf-8">
<link rel="shortcut icon" href="img/icon.gif" type="image/gif" />
<title>Food World</title>
<!-- CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/topmenu.css" rel="stylesheet" type="text/css">

	
<!-- JS -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scrollup.js"></script>
</head>
<body>
     <header class="header_home">
		 <?php require_once('menu_top.php'); ?>
		<div class="container welcome">
			<h1>"Welcome to the Food World"</h1>
			<h2>Order now and save 4% cash</h2>
		    <div class="ebtn">
				<?php 

					if (loggedin() ) {
					echo '<h5 align="center">Hi '.$FirstName.' '.$LastName.'! You are signed in <small><small><a href="Signout.php"> Sign Out</a></small></small></h5>';
					} else {
						echo '<h5 align="center">Hi ! You visit this site as a Guest! <small>Please Sign in</small></h5>';
					}
					
					?>
				
				
				<a href="signup.php"class="btn btn-light">Create Account</a>
				<a href="signin.php"class="btn btn-light">Sign In</a>
			</div>
		</div>
	 </header>
	<br>
	<div class="container big_logo">
		<h2 align="center">Most Favorites Top Rating Restaurants</h2>
		<div class="row">
			
			
			<div class="card-deck">
				<div class="card">
					<img class="card-img-top" src="img/kfc_logo.png" alt="Card image cap">
					<div class="card-block">
				  		<h4 class="card-title">Kentucky Fried Chicken (KFC)</h4>
				  		<p class="card-text">KFC Corporation, based in Louisville, Kentucky, is one of the few brands in America that can boast a rich, decades-long history of success and innovation.</p>
						<a href="#" class="btn-link">Visit Restaurant</a>
				  		<p class="card-text"><small class="text-muted">User Rating 5.0</small></p>
					</div>
			  	</div>
				
				<div class="card">
					<img class="card-img-top" src="img/pizza-hut_logo.png" alt="Card image cap">
					<div class="card-block">
				  		<h4 class="card-title">Pizza Hut</h4>
					  	<p class="card-text">Pizza Hut is an American restaurant chain and international franchise founded in 1958 by Dan and Frank Carney. The company is known for its Italian-American cuisine menu including pizza and pasta, as well as side dishes and desserts.</p>
						<a href="#" class="btn-link">Visit Restaurant</a>
					  	<p class="card-text"><small class="text-muted">User Rating 5.0</small></p>
					</div>
			  	</div>
				
				<div class="card">
					<img class="card-img-top" src="img/mcdonald's_Logo.png" alt="Card image cap">
					<div class="card-block">
				  		<h4 class="card-title">McDonald's</h4>
				  		<p class="card-text">McDonald's is a fast food company that was founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States.</p>
						<a href="#" class="btn-link">Visit Restaurant</a>
				  		<p class="card-text"><small class="text-muted">User Rating 5.0</small></p>
					</div>
			  	</div>
				
				<div class="card">
					<img class="card-img-top" src="img/burger-king_logo.png" alt="Card image cap">
					<div class="card-block">
				  		<h4 class="card-title">Burger King</h4>
				  		<p class="card-text">Burger King (BK) is an American global chain of hamburger fast food restaurants. Headquartered in the unincorporated area of Miami-Dade County, Florida, the company was founded in 1953 as InstaBurger King, a Jacksonville, Florida-based restaurant chain.</p>
						<a href="#" class="btn-link">Visit Restaurant</a>
				  		<p class="card-text"><small class="text-muted">User Rating 5.0</small></p>
					</div>
			  	</div>
				
			</div>
			
		</div>
	</div>
	<br>
	
	<div class="container">
		<div class="col-md-12 white_tp_bg_padding">
			WebstaurantStore is an online restaurant supply company based in Lititz, Pennsylvania. The company offers commercial-grade equipment to the food service industry through online ordering and commercial shipping. WebstaurantStore is a division of Clark Associates, Inc., which was rated as Central Pennsylvania's fastest growing company in 2013 by the Central Penn Business Journal.[1] In 2014, Clark Associates, Inc. was also rated as the fourth largest distributor of restaurant supplies by Foodservice Equipment & Supplies Magazine (FE&S),[2] and was awarded FE&S' Dealer of the Year Award in 2015.[3] WebstaurantStore was chosen as the featured e-commerce business for Pennsylvania in Google's Economic Impact Report for 2013
		</div>
	</div>
	<a id="comment_r"></a>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12 white_tp_bg_padding">
				
				<h2>Last Comments</h2>
				<?php
				$query = mysql_query("SELECT * FROM `comment` ORDER BY `c_id` DESC LIMIT 5");
				
				if(!empty($query)) {
					while($rows = mysql_fetch_array($query)) {
						$c_name = $rows['c_name'];
						$c_date_f = $rows['c_date'];
							$Inv_Date1 = strtotime($c_date_f);		
							$c_date = date("d F Y, h:i:s a", $Inv_Date1);
						$comment = $rows['comment'];
						$rating = $rows['rating'];
						
						?>
						<strong style="color: #137600">By: <?php echo $c_name; ?></strong> <br>
						<small style="color: #666"><?php echo $c_date; ?></small>  <br>
						<strong>Comment: </strong> <?php echo $comment; ?> <hr>
				
						<?php

					}
					
				}
				?>
				
				<?php
				$dt = date('d M Y, h:i:s a');
				if(isset($_POST['comment_post'])) {
					$name = $_POST['name'];
					$p_comment = mysql_real_escape_string($_POST['comment']);
					$rating = $_POST['rate'];
					
					$query = mysql_query("INSERT INTO `comment`(`c_name`, `c_date`, `comment`, `rating`) VALUES ('$name', NOW(), '$p_comment', '$rating')");
					
					if($query) {
						
						echo '<script type="text/javascript">';
						echo 'alert("Comment Post Successfully!");';
                    	echo 'window.location.href = "index.php?#comment_r";';
                    	echo '</script>';
						
					} else {
						echo mysql_error();
					}
				} else {
					echo mysql_error();
				}
				?>
				<a href="comments.php">View more comments</a>
				<hr>
				<h2>Leave Your Comment</h2>
				<form method="post" action="#">
					<div class="form-group">
						<label>Name:</label>
						<input type="text" name="name" placeholder="Your Name" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Comment:</label>
						<textarea name="comment" placeholder="Your Comment" rows="5" class="form-control" required></textarea>
					</div>
					<div class="form-group">
						<label>Rate this site:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 <label class="radio-inline"><input type="radio" name="rate" value="1"> 1</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label class="radio-inline"><input type="radio" name="rate" value="2"> 2</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label class="radio-inline"><input type="radio" name="rate" value="3"> 3</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label class="radio-inline"><input type="radio" name="rate" value="4"> 4</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label class="radio-inline"><input type="radio" name="rate" value="5" checked> 5</label> 
					</div>
					<input type="submit" name="comment_post" value="Post Comment" class="btn btn-dark">
				</form>
			</div>
		</div>
	</div>
	<br>
	
	
<div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>

    <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif ?>
</div>
	<br>
	<?php require_once('footer.php'); ?>

	
</body>


</html>