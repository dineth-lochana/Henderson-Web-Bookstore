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


$sqltablenames = "SELECT table_name FROM information_schema.tables WHERE table_name LIKE 'book %'";

$result = mysqli_query($con,$sqltablenames);

if(mysqli_num_rows($result)>0)
{
	while($row = mysqli_fetch_assoc($result))
	{	

      $sql34 = "DELETE FROM `".$row["table_name"]."` WHERE username = '".$email."'";


      //Execute the Code for the Site
      if(mysqli_query($con,$sql34)) 
      {
      echo "Comments Deleted sucessfully.";
      }
        else
      {
    echo "Something is wrong, please try again.";
      }



    }
}        


    

header("location: manageusers.php");
    
    
    
?>