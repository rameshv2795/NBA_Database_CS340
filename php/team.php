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

#btn1{
	background-color: red;
	border-style: solid;
	border-color: blue;
	margin:0 auto;
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

#divtest{
	
	float: right;
	width: 50%;
	
}
#realdiv{
	
	float: left;
	width: 50%;
}
#conflogo{
	height: 200px;
	width: 200 px;
	float: right;
}

</style>
</head>
<body>


<div class="jumbotron">
<header>
   <h1>Teams</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="php/player.php" class="btn btn-info" id="btn1" role="button">Players</a>
	<a href="php/stat.php" class="btn btn-info"  id="btn1" role="button">Player Statistics</a>
	<a href="#" class="btn btn-info"  id="btn1" role="button">Games</a>
	<a href="#" class="btn btn-info" id="btn1" role="button">Schedule</a>
	<a href="php/fan.php" class="btn btn-info" id="btn1" role="button">Login/Sign-Up</a></p>

</div>
<div id = "realdiv">
<center><h1>Eastern Conference</h1></center>

<article>

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
	  $strQuery = "SELECT * FROM team WHERE Conference='Eastern' ORDER BY TeamName";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $result -> execute();
	  $result = $result -> get_result();
	  echo "<br><br><br>";
		echo "<table>";
		echo "<tr>";
			echo "<th>" . "Team Name" ."</th>";
		echo "</tr>";		
		
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
					echo "<td><a href=player.php?data_team=".$entry["tid"].">" . $entry["TeamName"] . "</td>";		
			echo "</tr>";
		}
		echo "</table>";
	  

?>


</article>



</div>
<div id="divtest">
<center><h1>Western Conference</h1></center>
<article>

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
	  $strQuery = "SELECT * FROM team WHERE Conference='Western' ORDER BY TeamName";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $result -> execute();
	  $result = $result -> get_result();
	  echo "<br><br><br>";
		echo "<table>";
		echo "<tr>";
			echo "<th>" . "Team Name" ."</th>";
		echo "</tr>";		
		
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
					echo "<td><a href=player.php?data_team=".$entry["tid"].">" . $entry["TeamName"] . "</td>";		
			echo "</tr>";
		}
		echo "</table>";
	  

?>


</article>

</div>
</body>
</html>
