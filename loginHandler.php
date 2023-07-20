<?php
   session_start();
   
   define('DB_SERVER', 'localhost:3306');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   define('DB_DATABASE', 'wad_sa22521620');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      
      $myusername = mysqli_real_escape_string($db,$_POST['email']);
      $mypassword = mysqli_real_escape_string($db,$_POST['psw']); 
      
      $sql = "SELECT name FROM users WHERE email = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      while($row = mysqli_fetch_array($result))
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
		  $_SESSION['username'] = $myusername;
         header("location: account.php");
		 
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }
?>   