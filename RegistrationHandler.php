<?php session_start();

if(isset($_POST["btnsubmit"]))
{          
    
//Read the Values user has given and assign to variables.
$password = $_POST["psw"];
$email = $_POST["email"];
$name = $_POST["name"];
 
//Connect to the Database
$con = mysqli_connect("localhost","root","","WAD_sa22521620","3306");

//Error Handling
if (!$con)
{
   die("Sorry we are facing a technical issue."); 
}

//SQL Query
$sql = "INSERT INTO `users`(`name`, `email`, `password`) VALUES ('".$name."','".$email."','".$password."')";

$sql2 = "CREATE TABLE `".$email."` (`itemname` VARCHAR (700) NOT NULL , `price` INT NOT NULL , `cartid` INT NOT NULL AUTO_INCREMENT , PRIMARY KEY (`cartid`))";
    
    
//Execute the Code for the Site
mysqli_query($con,$sql) ;
mysqli_query($con,$sql2) ;

header("location: login-signin.html");
    
}
?>    