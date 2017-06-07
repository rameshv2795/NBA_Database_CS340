<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
   <h1>NBA Player Statistics</h1>
</header>
  
	<nav>
	  <ul >
		<li><a href="../home.html">Home</a></li>
		<li><a href="team.php">Teams</a></li>
		<li><a href="player.php">Players</a></li>
		<li><a href="#">Games</a></li>
		<li><a href="#">Schedule</a></li>
		<li><a href="#">Login/Sign-Up</a></li>	
	  </ul>
	</nav>


<article>

	<form id="search_form" method="post" >
	<select id="nbateamid" name="nbateamid">
	<!-- 	<option value="">Select Team</option> -->
		
	<?php echo add_teams();?>
	</select>
	<select id="player" name="player">
		<option value="">Select Player</option>
		
	</select>

	<br><br>
	<input type="submit" name="formSubmit" value="Show Stats">
	</form>

	<?php
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
	if(isset($_GET["username"])){
    $_SESSION["username"] = $_GET['username'];
	echo $_SESSION["username"];
}
	if(isset($_POST['formSubmit']))
	{
		
	  $strQuery = "SELECT * FROM statistics s 
		INNER JOIN player p ON s.nba_player = p.playerid
		WHERE s.nba_player = ? ORDER BY s.year";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $result -> bind_param("s",$_POST["player"]);
	  $result -> execute();
	  $result = $result -> get_result();
	  echo "<br><br><br>";
		echo "<table>";
		echo "<tr>";
			echo "<th>" . "PPG" ."</th>";
			echo "<th>" . "APG" ."</th>";
			echo "<th>" . "BPG" ."</th>";
			echo "<th>" . "FG%" ."</th>";
			echo "<th>" . "GP" ."</th>";
			echo "<th>" . "Year" ."</th>";
		echo "</tr>";		
		
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
				
					echo "<td>" . $entry["PPG"] . "</td>";
					echo "<td>" . $entry["APG"] . "</td>";
					echo "<td>" . $entry["BPG"] . "</td>";
					echo "<td>" . $entry["FG%"] . "</td>";
					echo "<td>" . $entry["GP"] . "</td>";
					echo "<td>" . $entry["year"] . "</td>";
			
			echo "</tr>";
		}
		echo "</table>";
	  }
	 ?>

</article>

</div>
</body>
</html>

<script>
$(document).ready(function()
{
	$('#nbateamid').ready(function(){
		var team_id = $(this).val();
		$.ajax({
			url: "dropdown/player_all_drop.php",
			method:"POST",
			data:{team_id:team_id},
			dataType: "text",
			success:function(data){
				//alert(team_id);
				
				$('#player').html(data);
				
				
			}
		
		});
		
	});
	$('#nbateamid').change(function(){
		var team_id = $(this).val();
		$.ajax({
			url: (team_id != "All Teams") ? "dropdown/player_drop.php" : "dropdown/player_all_drop.php",
			method:"POST",
			data:{team_id:team_id},
			dataType: "text",
			success:function(data){
				//alert(team_id);
				//if()
				$('#player').html(data);
				
				
			}
		
		});
		
	});
});
</script>

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
			$output .= "<option value = 'All Teams'> All Teams </option>";
			$all_players = 1;
		}
		$output .= "<option value ='" . $entry["TeamName"] . "'>" . $entry['TeamName'] . "</option>";
	}
	//echo "</select>";
	return $output;
}
?>