<?php session_start();
if(!isset($_SESSION["username"]))
{
	header('Location:login.php');
}
?>

<html>
	<head>
		<title>Henderson - Shop</title>
		<link href="page.css" rel="stylesheet" type="text/css">
	</head>
	
	<style>
	.btn-group button {
	background-color: #296fba; 
	border: 1px solid green; 
	color: white; 
	padding: 13px 24px; 
	border-radius: 25px;
	cursor: pointer; 
	float: center; 
	font-size: 20px;
	}

	.btn-group:after {
	content: "";
	clear: both;
	display: table;
	
	}

	.btn-group button:not(:last-child) {
	border-right: none; /* Prevent double borders */
	
	}

	.btn-group button:hover {
	background-color: #3e8e41;
	}
	
	</style>
	
	<body>
		
			<!-- Menu  -->
			<header>
				<a href="">
					<h4 class="logo">Henderson </h4>
				</a>
				<nav>
				<ul>
				<li><a href="index.html">HOME</a></li>
				<li><a href="cart.php">CART</a></li>
				<li><a href="shop.php">SHOP</a></li>
				<li><a href="login.html">LOG IN</a></li>
				<li><a href="account.php">ACCOUNT</a></li>
				<li><a href="about.html">ABOUT&CONTACT</a></li>
				<li> <a href="policy.html">PRIVACY</a></li>
				</ul>
				</nav>
			</header>
 
			<!-- About -->
			<br/><br/><br/><br/><br/><br/>
			<div class="container"> 			
			
			<div class="about3">
			<h1 align=center><u>Catalogue</u></h1>
			</div>
				
			
			<div id="flex-gap">



<?php
	//connect with the database
	

$con = mysqli_connect("localhost","root","","wad_sa22521620","3306");

//error handling

if(!$con)
{
	die("Sorry we have a etechnical issue");
}

//sql query

$sql = "SELECT * FROM `books`";

//execute the query against the database

$result = mysqli_query($con,$sql);
	
if(mysqli_num_rows($result)>0)
{
	while($row = mysqli_fetch_assoc($result))
	{	
		
?>			
			
				<div class="card">
					<img src="<?php echo $row["imagepath"]; ?>" style="width:251px ; height:400px ; border-radius: 24px;">

					<p><h1><?php echo $row["name"]; ?></h1></p>

					<p class="price"><?php echo $row["price"]; ?></p>

					<a href="addcarthandler.php?name=<?php  echo $row["name"]; ?>&price=<?php echo $row["price"]; ?>">Add to Cart</a></p> 			

					<a href="commentshandler.php?bname=<?php echo $row["name"]; ?>">Comments</a></p> 									
				</div>
				
				

<?php
	}
}
	mysqli_close($con); //close the connection with the database

?>				
			
			</div>		
				</br></br>
				
				 <!-- 
				<div class="btn-group" style="width:100%">
				<center>
				<button style="width:25%" onclick="location.href='shop.php';">Page 1</button>
				&nbsp
				&nbsp
				&nbsp
				<button style="width:25%" onclick="location.href='shop2.html';">Page 2</button>
				</center>
				
				</div>
				
				</br></br>
			-->
			</div>
					 
	
	
		</div>
		<br/><br/>
		<!-- Copyright -->
		<footer>
		<p><a href=index.html style="text-decoration:none;color:white;">Main</a>	|	
		<a href=cart.php style="text-decoration:none;color:white;">Cart</a>  |  
		<a href=shop.php style="text-decoration:none;color:white;">Shop</a>  |  
		<a href=login.html style="text-decoration:none;color:white;">Login</a>  |  
		<a href=about.html style="text-decoration:none;color:white;">About</a>  |  
		<a href=policy.html style="text-decoration:none;color:white;">Privacy</a>

		</p>
		</footer>
		<div class="copyright">2023 - <b>Henderson Inc</b></div>
		
		
	
	</body>

</html>