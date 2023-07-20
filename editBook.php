<?php session_start();
    
if(!isset($_SESSION["username"]))
{
    header('Location:login.php');
}

?>
<html>
	<head>
		<title>Henderson Books</title>
		<link href="Page.css" rel="stylesheet" type="text/css">
	</head>
		
	<style>
		.container {
			padding: 16px;
			background: rgba(255, 255, 255, 0.8);
			border-radius: 25px;
		}

		input[type=text], input[type=password] {
			width: 100%;
			padding: 15px;
			margin: 5px 0 22px 0;
			display: inline-block;
			border: none;
			
		}

		input[type=text]:focus, input[type=password]:focus {
			background-color: #ddd;
			outline: none;
		}

		hr {
			border: 1px solid #f1f1f1;
			
			margin-bottom: 40px;
		}

		.registerbtn {
			background-color: #296fba;
			color: white;
			padding: 16px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 80%;
			opacity: 1.0;
			border-radius: 25px;
			font-size: 20px;
		}

		.registerbtn:hover {
			opacity:1;
		}

		a {
			color: dodgerblue;
		}

		.signin {
			background-color: #f1f1f1;
			text-align: center;
			background: rgba(255, 255, 255, 0.8);
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
 

 <?php
    
    
    //Create a Session to record an Advertisement ID.
    
        
        
    
    
    $con = mysqli_connect("localhost","root","","wad_sa22521620","3306");
    
    //error handling
    
    if(!$con)
    {
        die("Sorry we have th etechnical issue");
    }
        
    $_SESSION["id"] = $_GET["id"];    
        
    $sql = "SELECT * FROM `books` where `id` = ".$_GET["id"]."";
        
    $result = mysqli_query($con,$sql);    
        
    $row = mysqli_fetch_assoc($result);    
    
        
        
    ?>                
				
				<br/><br/><br/><br/><br/><br/>

					<form action="editHandler.php" method="post" enctype="multipart/form-data">
						<div class="container">
						<div class=about3>	
						<h1>Edit Books</h1>
						<p>Change Book Details Here!</p>

						<hr>

						<label for="name"><b>Name</b></label>
						<input type="text" placeholder="Enter Name" value=<?php echo $row["name"]; ?> name="bookname" id="name" required><br/>

						<label for="description"><b>Description</b></label><br/>
                        <textarea name="bookdescription" value=<?php echo $row["description"]; ?> placeholder="Describe about the Novel"></textarea>
                        <br/><br/>

						<label for="cover"><b>Cover</b></label><br/>
                        <input type="file" name="bookcover" placeholder="Upload a Cover" required value="<?php echo $row["imagepath"]; ?>"><br/><br/>

                        <?php $_SESSION["imagepath2"] = $row["imagepath"]; ?>    

						<label for="price"><b>Price</b></label>
						<input type="text" placeholder="Enter Price" name="bookprice" value=<?php echo $row["price"]; ?> id="price" required><br/>
						
						<label for="check"><b>Add the Book Now?</b></label>
                         <input type="checkbox" name="chkPublish" <?php if(($row["publish"]) == "1") {echo "checked";} ?>><br/><br/>

						<center>
						<button  type="submit" name="addsubmit"class="registerbtn">Add Book</button>
						<br/><br/>
						</center>



        




						</div>


						</form>

						
		
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

		</footer>
		<div class="copyright">2023 - <b>Henderson Inc</b></div>
	
	</body>

</html>