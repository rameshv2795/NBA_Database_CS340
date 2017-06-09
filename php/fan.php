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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
	height:100%;
	position:fixed;
}

#btn1{
	background-color: red;
	border-style: solid;
	border-color: blue;
	margin:0 auto;
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

<div class="jumbotron">
<header>
   <h1>Login</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="team.php" class="btn btn-info" id="btn1" role="button">Teams</a>
	<a href="stat.php" class="btn btn-info"  id="btn1" role="button">Player Statistics</a>
	<a href="game.php" class="btn btn-info" id="btn1" role="button">Games</a>
	<a href="player.php" class="btn btn-info" id="btn1" role="button">Players</a></p>

</div>
<div>


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
