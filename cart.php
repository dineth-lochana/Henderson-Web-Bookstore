<?php session_start();
if(!isset($_SESSION["username"]))
{
	header('Location:login.php');
}
?>

<html>
	<head>
		<title>Henderson - Cart</title>
		<link href="page.css" rel="stylesheet" type="text/css">
	</head>
	
	<style>
	.poscen
	{
	margin : auto;
	left : 200px;
	text-align: center;
	}

	.container 
	{
			padding: 16px;
			background: rgba(255, 255, 255, 0.8);
			border-radius: 25px;
	}

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

	table, th, td 
	{
  		border: 0px;
  		border-collapse: collapse;
		font-size: 34px;
	}

	th, td 
	{
		background: rgba(255, 255, 255, 0.0);
		text-align: center;
	}

	tr
	{
		text-align: center;
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
			
			<div class="container" border-radius: 25px> 			
			<div class=about3>
			
			  <form name="ShoppingList" method=post action=cart.php>
				<u><h1 align=center>Shopping List</h1></u>
				<br/>
				<table style="width:80%" align="center">

				<tr>
					<th>Product</th>
					<th>Price</th> 
					<th>ID</th>
				</tr>  
				<tr>
				</tr>  
	


			<?php
				//connect with the database
			
			$con = mysqli_connect("localhost","root","","wad_sa22521620","3306");
			
			//error handling
			
			if(!$con)
			{
				die("Sorry we have a etechnical issue");
			}
			
			//sql query
			
			$sql = "SELECT * FROM `".$_SESSION["username"]."`";
			
			//execute the query against the database
			
			$result = mysqli_query($con,$sql);

			$total = "";
				
			if(mysqli_num_rows($result)>0)
			{
				while($row = mysqli_fetch_assoc($result))
				{	
					
			?>			
						


						<tr>
                            <td> <?php echo $row["itemname"]; ?></td>
							<td> <?php echo $row["price"]; ?></td>
							<td> <?php echo $row["cartid"]; ?></td>		
				        </tr>				
						
						<?php $total = (int)$total + (int)$row["price"];?>
			
			<?php
				}
			}
				mysqli_close($con); //close the connection with the database
			
			?>				
			
				
				</table>



				<br/><br/>
				<h2 align=center>Total = <?php echo $total; ?></h2>


				<h2 align="center"></h2>

				<h2>

				</br></br></br>
				</br></br></br>
				<label>

				
						<center>
						<button class="registerbtn" onclick="location.href='shop.php';">Continue to Checkout</button>

						<button class="registerbtn"  name=clearcartbtn>Clear Cart</button>
						</center>
						
						
				</label>
				</br></br></br>
			   

			   </form>
			   


 <?php
    
    if(isset($_POST["clearcartbtn"]))
    {          
        
    //Read the Values user has given and assign to variables.
    
    $username = $_SESSION["username"];

    //Connect to the Database
    $con2 = mysqli_connect("localhost","root","","wad_sa22521620","3306");
    
    //Error Handling
    if (!$con)
    {
       die("Sorry we are facing a technical issue."); 
    }
    
    //SQL Query
    $sql2 = "truncate table `".$username."`";
	
                 
    //Execute the Code for the Site
    if(mysqli_query($con2,$sql2)) 
    {
        echo "Cart Cleared sucessfully.";
		header("location: cart.php");

    }
    else
    {
        echo "Something is wrong, please try again.";
    }
        
    
    
        
    }
        
        
    ?>


			</div>
			</div>
			</div>
					 
	
	
		</div>
		<br/>
		<br/>
		
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