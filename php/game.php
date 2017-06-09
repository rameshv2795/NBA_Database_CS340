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

table, th, td {
   border: 1px solid black;
   text-align:center;
   font-weight: bold;
   font-size: 120%;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: blue;
    clear: left;
    text-align: center;
}

#btn1{
	background-color: red;
	border-style: solid;
	border-color: blue;
	margin:0 auto;
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
   <h1>Finals Games</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="team.php" class="btn btn-info" id="btn1" role="button">Teams</a>
	<a href="stat.php" class="btn btn-info"  id="btn1" role="button">Player Statistics</a>
	<a href="fan.php" class="btn btn-info" id="btn1" role="button">Login/Sign-Up</a>
	<a href="player.php" class="btn btn-info" id="btn1" role="button">Players</a></p>

</div>


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
	  $strQuery = "SELECT * FROM Game ORDER BY GameDate";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $result -> execute();
	  $result = $result -> get_result();
	  echo "<br><br><br>";
		echo "<table align='center'>";
		echo "<tr>";
			echo "<th>" . "Game" ."</th>";
			echo "<th>" . "Team 1" ."</th>";
			echo "<th>" . "Team 2" ."</th>";
			echo "<th>" . "Team 1 Score" ."</th>";
			echo "<th>" . "Team 2 Score" ."</th>";
			echo "<th>" . "Date" ."</th>";
		echo "</tr>";		
		
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
					echo "<td>" . $entry["GameID"] . "</td>";
					echo "<td>" . $entry["Team1Name"] . "</td>";
					echo "<td>" . $entry["Team2Name"] . "</td>";
					echo "<td>" . $entry["Score1"] . "</td>";
					echo "<td>" . $entry["Score2"] . "</td>";
					echo "<td>" . $entry["GameDate"] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	  

?>


</body>
</html>
