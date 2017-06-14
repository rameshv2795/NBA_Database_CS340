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
   <h1>Team Fan Stats</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="member.php" class="btn btn-info" id="btn1" role="button">Back to Member Page</a>


</div>
<center>


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
	  $strQuery = "SELECT FavoriteTeam, COUNT(*) FROM fan WHERE FavoriteTeam <> ''  GROUP BY FavoriteTeam";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  $result -> execute();
	  $result = $result -> get_result();
	  /* Printing the table of reults from the databse */
	  echo "<br><br><br>";
		echo "<table cellspacing='100'>";
		echo "<tr>";
			echo "<th>" . "Team" ."</th>";
			echo "<th>" . "Fans" ."</th>";

		echo "</tr>";		
		/*Printing filling table with favorite team results*/
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
					echo "<td>" . $entry["FavoriteTeam"] . "</td>";
					echo "<td>" . $entry["COUNT(*)"] . "</td>";

			echo "</tr>";
		}
		echo "</table>";
	  

?>



</center>


</body>
</html>
