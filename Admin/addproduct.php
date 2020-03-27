<?php 
session_start();
	if (empty($_SESSION['username'])&& empty($_SESSION['admin'])) {
	header("Location: ../index.php");
	}
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Products</title>
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
	<div class="right">
		<a href="products.php" class="btn btn-sm btn-primary">View Product</a>
		<center><br>
			<form action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" role="form">
				<div class="form-group">
					<input type="text" class="form-control" name="name" placeholder="Enter Product Name" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="price" placeholder="Enter Product Price" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="quantity" placeholder="Enter Product Quantity" required>
				</div>
					<input type="submit" class="btn btn-primary btn-sm" value="Add Product">
			</form>
			<?php
				if ($_SERVER['REQUEST_METHOD']=="POST") {
					require_once "../app/Product.php";
					$products->addproduct();
				}
			?>
		</center>
		
	</div>
	<div class="footer">
		<center>&copy; <?php echo date("Y"); ?></center>
	</div>
</div>
</body>
</html>