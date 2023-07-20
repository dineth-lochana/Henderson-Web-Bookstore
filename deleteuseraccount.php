<?php 
session_start();
    
$email = $_GET["email"];        
        
//Connect to the Database
$con = mysqli_connect("localhost","root","","wad_sa22521620","3306");

//Error Handling
if (!$con)
{
   die("Sorry we are facing a technical issue."); 
}

//SQL Query
$sql = "DELETE FROM users WHERE  email ='".$email."';";

//Execute the Code for the Site
if(mysqli_query($con,$sql)) 
{
    echo "Account Deleted sucessfully.";
}
else
{
    echo "Something is wrong, please try again.";
}
    

header("location: manageusers.php");
    
    
    
?>