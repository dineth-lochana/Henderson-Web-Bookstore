<?php session_start();
    
if(!isset($_SESSION["username"]))
{
    header('Location:login-signin.html');
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
	align : center;
	margin : auto;
	left : 200px;
	text-align: center;
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

    .card2 {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 300px;
    margin: auto;
    text-align: center;
    font-family: arial;
    }

    .price {
     color: grey;
     font-size: 22px;
    }

    .card button {
     border: none;
     outline: 0;
     padding: 12px;
     color: white;
     background-color: #000;
     text-align: center;
     cursor: pointer;
     width: 100%;
     font-size: 30px;
    }

    .card button:hover {
         opacity: 0.7;
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
			<div class=about3>
			

			<u><h1 align=center>Administration</h1></u> 

    
            <table width="908" height="225" align="center">
            <tbody>
            <tr>

            <td>    
            <div class="card2">
                <a href="AddBooks2.php" style="text-decoration:none;color:black;">
                <img src="images/add.png" style="width:100%" height="220px">
                <h4>Add Books</h4>
                <br/>
                </a>
            </div>
            </td>

            <td> 
            <div class="card2">
                <a href="manageBooks.php" style="text-decoration:none;color:black;">
                <img src="images/viewAll.png" alt="Denim Jeans" style="width:100%" height="220px">
                <h4>Manage Books</h4>
                <br/>
                </a>
            </div>
            </td>

            <td>
            <div class="card2">
                <a href="manageusers.php" style="text-decoration:none;color:black;">
                <img src="images/profile.jpg" alt="Denim Jeans" style="width:80%" height="220px">
                <h4>Manage Users</h4>
                <br/>
                </a>
            </div> 
            </td>  
            
            </tr>
            </tbody>
            </table>

			</div>
			</div>
			</div>
					 
	
	
		</div>
		<br/>
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