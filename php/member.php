	<?php session_start();
	?>
	<?php
	function add_players(){

	$hostdb = "classmysql:3306";  // MySQl host
	$userdb = "cs340_rameshv";    // MySQL username
	$passdb = "6238";             // MySQL password
	$namedb = "cs340_rameshv";    // MySQL database name

	// Establish a connection to the database
	$dbhandle = new mysqli($hostdb, $userdb, $passdb, $namedb);

	$sql = "SELECT FirstName, LastName FROM player ORDER BY LastName";
	$set_players = $dbhandle -> query($sql);
	$player_array = array();

	$output .= "<option value = 'All Players'> Favorite Player </option>";
		//echo "<select name='team' id='selected_team'>";
		while($row = $set_players -> fetch_assoc()){
			$output .= ' <option value="'.$row["playerid"].'">'.$row["LastName"].', '.$row["FirstName"].'</option>';
		}
		//echo "</select>";
		return $output;
	}
	?>		
	<?php
	function add_teams(){

	$hostdb = "classmysql:3306";  // MySQl host
	$userdb = "cs340_rameshv";    // MySQL username
	$passdb = "6238";             // MySQL password
	$namedb = "cs340_rameshv";    // MySQL database name

	// Establish a connection to the database
	$dbhandle = new mysqli($hostdb, $userdb, $passdb, $namedb);

	$sql = "SELECT TeamName FROM team";
	$set_teams = $dbhandle -> query($sql);
	$teams_array = array();
	$all_players = 0;

		//echo "<select name='team' id='selected_team'>";
		while($entry = $set_teams -> fetch_assoc()){
			if($all_players == 0){
				$output .= "<option value = 'All Teams'> Favorite Team </option>";
				$all_players = 1;
			}
			$output .= "<option value ='" . $entry["TeamName"] . "'>" . $entry['TeamName'] . "</option>";
		}
		//echo "</select>";
		return $output;
	}
	?>	 
	
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
	
	if(isset($_SESSION["logged_in"])){
		echo '<script language="javascript">';
		echo 'alert("LOGGED IN")';
		echo '</script>';
		$username = $_SESSION["username"];
		echo $username;
		
		if(isset($_POST['player_submit'])){
		
		  $strQuery = "UPDATE fan SET FavoritePlayer = ? WHERE 
					   Username = '".$username."'"; 
		
		  echo "DROPDOWN";
		  /*Prepare Statement for security*/
		  $result = $dbhandle -> prepare($strQuery);
		  $pid = $_POST["pla"];
		  echo $_POST["pla"];
		  /*Bind parameter*/
		  $result -> bind_param("s",$pid);
		  $result -> execute();
	      $result = $result -> get_result();			
		
		}
		
		else if(isset($_POST['team_submit'])){
		
		  $strQuery = "UPDATE fan SET FavoriteTeam = ? WHERE 
					   Username = '".$username."'"; 
		
		  echo "DROPDOWN";
		  /*Prepare Statement for security*/
		  $result = $dbhandle -> prepare($strQuery);
		  $pid = $_POST["nbateamid"];
		  echo $_POST["nbateamid"];
		  /*Bind parameter*/
		  $result -> bind_param("s",$pid);
		  $result -> execute();
	      $result = $result -> get_result();			
		
		}		
		
		else if(isset($_POST['about_submit'])){
		
		  $strQuery = "UPDATE fan SET AboutMe = ? WHERE 
					   Username = '".$username."'"; 
		

		  /*Prepare Statement for security*/
		  $result = $dbhandle -> prepare($strQuery);
		  $pid = $_POST["text"];
		  echo $_POST["text"];
		  /*Bind parameter*/
		  $result -> bind_param("s",$pid);
		  $result -> execute();
	      $result = $result -> get_result();			
		
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
   <h1>Fan Page</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="team.php" class="btn btn-info" id="btn1" role="button">Teams</a>
	<a href="stat.php" class="btn btn-info"  id="btn1" role="button">Player Statistics</a>
	<a href="game.php" class="btn btn-info" id="btn1" role="button">Games</a>
	<a href="player.php" class="btn btn-info" id="btn1" role="button">Players</a></p>

</div>


<article>
	<form id="player_form" method="post" >
	<select id="pla" name="pla">
	<?php echo add_players();?>
	<option> 10 </option>
	</select>
	<br><br>
	<input type="submit" name="player_submit" value="Add Favorite Player">
	</form>
	<br>
	<form id="team_form" method="post" >
	<select id="nbateamid" name="nbateamid">
	<?php echo add_teams();?>
	</select>
	<br><br>
	<input type="submit" name="team_submit" value="Add Favorite Team">
	</form>
	<br>
	<form id="aboutme_form" method="post" >
	<textarea name="text" id="textarea" rows="5" cols="60">
	
	</textarea>
	<br><br>
	<input type="submit" name="about_submit" value="Add About">
	</form>	
	<br>
	<a href="team_fav.php" class="btn btn-info" id="btn1" role="button">View Team Fan Stats</a></p>
	<br><br><br>
	<a href="fan.php" class="btn btn-info" id="btn1" role="button">Logout</a></p>
	

</article>



</div>

</body>
</html>
