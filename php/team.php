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
   <h1>NBA Teams</h1>
</header>
  
	<nav>
	  <ul >
		<li><a href="../home.html">Home</a></li>
		<li><a href="player.php">Players</a></li>
		<li><a href="stat.php">Player Statistics</a></li>
		<li><a href="#">Games</a></li>
		<li><a href="#">Schedule</a></li>
		<li><a href="#">Login/Sign-Up</a></li>	
	  </ul>
	</nav>


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
	  $strQuery = "SELECT * FROM team ORDER BY TeamName";
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
					echo "<td>" . $entry["TeamName"] . "</td>";		
			echo "</tr>";
		}
		echo "</table>";
	  

?>


</article>



</div>

</body>
</html>
