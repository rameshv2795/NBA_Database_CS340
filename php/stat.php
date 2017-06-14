<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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

#btn1{
	background-color: red;
	border-style: solid;
	border-color: blue;
	margin:0 auto;
}

li {
	display: inline;
}

table, th, td {
   border: 1px solid black;
   text-align:center;
   font-weight: bold;
   font-size: 120%;
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
   <h1>Player Stats</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="team.php" class="btn btn-info" id="btn1" role="button">Teams</a>
	<a href="fan.php" class="btn btn-info" id="btn1" role="button">Login/Sign-Up</a>
	<a href="game.php" class="btn btn-info" id="btn1" role="button">Games</a>
	<a href="player.php" class="btn btn-info" id="btn1" role="button">Players</a></p>

</div>


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
	  //preparing table for the stats
	  echo "<br><br><br>";
		echo "<table>";
		echo "<tr>";
			echo "<th>" . "PPG" ."</th>";
			echo "<th>" . "APG" ."</th>";
			echo "<th>" . "BPG" ."</th>";
			echo "<th>" . "FG%" ."</th>";
			echo "<th>" . "3P%" ."</th>";
			echo "<th>" . "GP" ."</th>";
			echo "<th>" . "Turnovers" ."</th>";
			echo "<th>" . "Rebounds" ."</th>";
			echo "<th>" . "Year" ."</th>";
			
		echo "</tr>";		
		//populating table with player stats. 
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
				
					echo "<td>" . $entry["PPG"] . "</td>";
					echo "<td>" . $entry["APG"] . "</td>";
					echo "<td>" . $entry["BPG"] . "</td>";
					echo "<td>" . $entry["FG%"] . "</td>";
					echo "<td>" . $entry["3P%"] . "</td>";
					echo "<td>" . $entry["GP"] . "</td>";
					echo "<td>" . $entry["TOV"] . "</td>";
					echo "<td>" . $entry["RPG"] . "</td>";
					echo "<td>" . $entry["year"] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	  }
	  if(isset($_GET["data"])){ /*If linked clicked from player page*/
    
	  $p = $_GET["data"];
	  $strQuery = "SELECT * FROM statistics s 
		INNER JOIN player p ON s.nba_player = p.playerid
		WHERE s.nba_player = ? ORDER BY s.year";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $result -> bind_param("s",$p);
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
		//populating the table with the results from the database
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

</body>
</html>

<script>
//player dropdown / ajax for webpage
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
	//updating the other dropdown when the team is selected
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
//for the dropdown menu
//populate
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