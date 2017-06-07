<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
	height:100%;
	position:fixed;
	overflow-y: auto;
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
   <h1>NBA Players</h1>
</header>
  
	<nav>
	  <ul >
		<li><a href="../home.html">Home</a></li>
		<li><a href="team.php">Teams</a></li>
		<li><a href="stat.php">Player Statistics</a></li>
		<li><a href="#">Games</a></li>
		<li><a href="#">Schedule</a></li>
		<li><a href="#">Login/Sign-Up</a></li>	
	  </ul>
	</nav>


<article>

	<form id="search_player_form" method="post" >
	
	Search Player Name: <input type="text" name="pname" id="pname"><br>

	<br><br>
	<input type="submit" name="search_submit" value="Find Player">
	</form>
	
	<?php
	session_start();
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
	if(isset($_POST['search_submit']))
	{

	  $strQuery = "SELECT * FROM player  
		WHERE FirstName LIKE CONCAT ('%',?,'%') OR LastName LIKE CONCAT ('%',?,'%') 
			OR ? LIKE CONCAT (FirstName,' ',LastName)";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  /*Bind search to two parameters for first and last name*/
	  $result -> bind_param("sss",$_POST["pname"],$_POST["pname"],$_POST["pname"]);
	  $result -> execute();
	  $result = $result -> get_result();
	}
	else{
	
		$strQuery = "SELECT * FROM player";
		$result = $dbhandle -> query($strQuery);
	
	}
	  echo "<br><br><br>";
		echo "<table>";
		echo "<tr>";
			echo "<th>" . "Last Name" ."</th>";
			echo "<th>" . "First Name" ."</th>";
			echo "<th>" . "Position" ."</th>";
			echo "<th>" . "Height" ."</th>";
			echo "<th>" . "Weight" ."</th>";
			echo "<th>" . "College" ."</th>";
		echo "</tr>";		
		
		while($entry = $result -> fetch_assoc()){
		
			echo "<tr>";
				
					echo "<td>" . $entry["LastName"] . "</td>";
					echo "<td>" . $entry["FirstName"] . "</td>";
					echo "<td>" . $entry["Position"] . "</td>";
					echo "<td>" . $entry["Height"] . "</td>";
					echo "<td>" . $entry["Weight"] . "</td>";
					echo "<td>" . $entry["College"] . "</td>";
			
			echo "</tr>";
		}
		echo "</table>";


	 ?>
</article>



</div>

</body>
</html>
