	<?php session_start();
	//echo session_id();
	//print $_COOKIE['PHPSESSID'];
	// Including the wrapper file in the page
	$hostdb = "classmysql:3306";  // MySQl host
	$userdb = "cs340_rameshv";  // MySQL username
	$passdb = "6238";  // MySQL password
	$namedb = "cs340_rameshv";  // MySQL database name

	// Establish a connection to the database
	$dbhandle = new mysqli($hostdb, $userdb, $passdb, $namedb);

	/*Render an error message, to avoid abrupt failure, if the database connection parameters are incorrect */
	if ($dbhandle->connect_error) {
	  exit("There was an error with your connection: ".$dbhandle->connect_error);
	}
	if(isset($_POST['account_submit'])){
	

	  $strQuery = "INSERT INTO fan (Username,Password) VALUES (?,?)"; 
	  
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $username = $_POST["user"];
	  $password = md5($_POST["pass"]); //Hashed
	
	  
	  
	  /*Bind search to two parameters for first and last name*/
	  $result -> bind_param("ss",$username,$password);
	  
	  /*Check to see if unique username*/
	  $checkQuery = "SELECT username FROM fan WHERE username = ?";
	  $check = $dbhandle -> prepare($checkQuery);
	  $check -> bind_param("s",$username);
	  $check -> execute();
	  $check = $check -> get_result();	  
	  if(mysqli_num_rows($check) == 0){
		$result -> execute();
		$result = $result -> get_result();
		$_SESSION["logged_in"] = true;
		$_SESSION["username"] = $username;
		if(isset($_SESSION["logged_in"])){
				header('Location: member.php');
				echo "Welcome '".$username."'! Account Created!";
				echo '<a href="member.php">Enter Member Area!</a>';
				die();
		}
		else{
			echo "Unexpected error has occurred";
		}
		//header("Location: http://web.engr.oregonstate.edu/~rameshv/CS340_Project/NBA_Database_CS340/php/member.php", true,  301);
		//die(); /*prevents unexpected behaviour after redirect */
	  }
	  else{
		echo "username already exists";
	  }
	  
	  

	}
	
	else if(isset($_POST['account_login'])){
	  
	  $strQuery = "SELECT Username FROM fan WHERE Username = ? AND Password = ?"; 
	  
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $username = $_POST["user"];
	  $password = md5($_POST["pass"]); //Hashed
	
	  
	  
	  /*Bind search to two parameters for first and last name*/
	  $result -> bind_param("ss",$username,$password);
	  
	  /*Check to see if unique username*/
  	  $result -> execute();
	  $result = $result -> get_result();
	  if(mysqli_num_rows($result) == 1){

		$_SESSION["logged_in"] = true;
		$_SESSION["username"] = $username;
		if(isset($_SESSION["logged_in"])){
				header('Location: member.php');
				echo '<a href="member.php">Enter Member Area!</a>';
				die();
		}
		else{
			echo "Login Error";
		}
		//header("Location: http://web.engr.oregonstate.edu/~rameshv/CS340_Project/NBA_Database_CS340/php/member.php", true,  301);
		//die(); /*prevents unexpected behaviour after redirect */
	  }
	  else{
		echo "Invalid Login Information";
	  }
	  
	  

	}
	

	
	
	
	?>


<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
	height:100%;
	position:fixed;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: blue;
    clear: left;
    text-align: center;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

li {
	display: inline;
}

article {
    margin-left: 170px;
    padding: 1em;
    overflow: hidden;
	
}

nav{

	text-align: center;
	margin-right: 30px;
	
}



</style>
</head>
<body>

<div class="container">

<header>
   <h1>Login/Sign-Up</h1>
</header>
  
	<nav>
	  <ul >
		<li><a href="../home.html">Home</a></li>
		<li><a href="player.php">Players</a></li>
		<li><a href="stat.php">Player Statistics</a></li>
		<li><a href="#">Games</a></li>
		<li><a href="#">Schedule</a></li>
		<li><a href="#">Teams</a></li>	
	  </ul>
	</nav>


<article>
	<form id="signup_form" method="post" >
	
		Username: <input type="text" name="user" required>*required<br>
		Password: <input type="text" name="pass" required> *required<br>

	<br><br>
	<input type="submit" name="account_submit" value="Create Account">
	<input type="submit" name="account_login" value="Login">
	</form>



</article>



</div>

</body>
</html>
