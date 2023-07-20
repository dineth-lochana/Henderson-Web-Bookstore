<?php 
session_start();
    
$_SESSION["id"] = $_GET["id"];        
        
//Connect to the Database
$con = mysqli_connect("localhost","root","","wad_sa22521620","3306");

//Error Handling
if (!$con)
{
   die("Sorry we are facing a technical issue."); 
}

//SQL Query
$sql = "DELETE FROM `books` WHERE  `books`.`id` =".$_SESSION["id"].";";

//Execute the Code for the Site
if(mysqli_query($con,$sql)) 
{
    echo "Book Deleted sucessfully.";
}
else
{
    echo "Something is wrong, please try again.";
}
    

header("location: manageBooks.php");
    
    
    
?>