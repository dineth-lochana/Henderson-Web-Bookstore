
<?php 
session_start();


if(isset($_POST["addsubmit"]))
{          
    
//Read the Values user has given and assign to variables.

    
$description = $_POST["bookdescription"];
$productname = $_POST["bookname"];
$price = $_POST["bookprice"]; 
 
    
if(isset($_POST["chkPublish"]))
{
    $status = 1;
}
else
{
    $status = 0;
}
    

if(!file_exists($_FILES["imageFile"]["tmp_name"]) || !is_uploaded_file($_FILES["imageFile"]["tmp_name"]))
   {
       $image = $_SESSION["imagepath2"];
   }
   else
   {
       
       //Deal with the uploaded image    
$image = "covers/".basename($_FILES["imageFile"]["name"]);
move_uploaded_file($_FILES["imageFile"]["tmp_name"],$image);  
       
   }
               
    
    
  
        
//Connect to the Database
$con = mysqli_connect("localhost","root","","wad_sa22521620","3306");

//Error Handling
if (!$con)
{
   die("Sorry we are facing a technical issue."); 
}

//SQL Query
$sql = "UPDATE `books` SET `name` = '".$productname."', `description` = '".$description."', `publish` = '".$status."', `imagepath` = '".$image."', `price` = '".$price."' WHERE `books`.`id` = ".$_SESSION["id"].";";
    
             
//Execute the Code for the Site
if(mysqli_query($con,$sql)) 
{
    echo "Advertisement uploaded sucessfully.";
}
else
{
    echo "Something is wrong, please try again.";
}
    

header("location: manageBooks.php");
    
}
    
    
?>