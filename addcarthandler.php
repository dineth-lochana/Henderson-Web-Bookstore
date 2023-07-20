<?php 
session_start();
 

//Connect to the Database
$con = mysqli_connect("localhost","root","","wad_sa22521620","3306");

//Error Handling
if (!$con)
{
   die("Sorry we are facing a technical issue."); 
}

//SQL Query
$sql = "INSERT INTO `".$_SESSION["username"]."` (`itemname`, `price`) VALUES ('".$_GET["name"]."', '".$_GET["price"]."');";

//Execute the Code for the Site
if(mysqli_query($con,$sql)) 
{
    echo "Book Added sucessfully.";
}
else
{
    echo "Something is wrong, please try again.";
}
    

header("location: shop.php");
    
    
    
?>