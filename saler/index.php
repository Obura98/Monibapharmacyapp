<?php 
session_start();
	if (empty($_SESSION['username'])&& empty($_SESSION['saler'])) {
	header("Location: ../index.php");
	}
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Saler Dashboard</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/admin.css">
  	<script src="../bootstrap/js/jquery.min.js"></script>
  	<script src="../bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<?php include "includes/top.php"; ?>
<div class="wrapper">
	<?php
		include "includes/left.php";
	?>
	<div class="right"><br>
		<center><p class="lead">Welcome To Moniba Phamacy System</p></center><br>
		<p class="" style="">
			In your Dashboard you can:
		<p>
			<ul>
			<li><b>Add Sales</b></li><br>
			<li><b>Edit Sales</b></li><br>
			<li><b>View Products</b></li><br>
			<li><b>Change your Account Password</b></li>
		</ul>
		</p>
		</p>
		
	</div>
	<div class="footer">
		<center>&copy; <?php echo date("Y"); ?></center>
	</div>
</div>
</body>
</html>