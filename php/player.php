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

<div class="jumbotron">
<header>
   <h1>Players</h1>
</header>
	<p></p>
	<p></p>
	<p class="text-center">
	<a href="php/team.php" class="btn btn-info" id="btn1" role="button">Teams</a>
	<a href="php/stat.php" class="btn btn-info"  id="btn1" role="button">Player Statistics</a>
	<a href="#" class="btn btn-info"  id="btn1" role="button">Games</a>
	<a href="#" class="btn btn-info" id="btn1" role="button">Schedule</a>
	<a href="php/fan.php" class="btn btn-info" id="btn1" role="button">Login/Sign-Up</a></p>

</div>
<div>
<center><article style="background-color:red">

	<form id="search_player_form" method="post" >
	
	<img src="images/lebron-james.jpg" style="float:left;height:800px;width:300px">
	
	Search Player Name: <input type="text" name="pname" id="pname"><br>

	<br><br>
	<input type="submit" name="search_submit" value="Find Player">
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
	if(isset($_POST['search_submit'])){ //Searched
	

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
	
	else if(isset($_GET["data_team"])){ //redirected from team.php
		
	  $t = 	$_GET["data_team"];
	  //echo $t;
	  $strQuery = "SELECT * FROM player p  
		WHERE p.team IN (SELECT TeamName FROM team WHERE ? = tid )";
	  /*Prepare Statement for security*/
	  $result = $dbhandle -> prepare($strQuery);
	  /*Bind search to two parameters for first and last name*/
	  $result -> bind_param("s",$t);
	  $result -> execute();
	  $result = $result -> get_result();		
	
	}
	
	else{ //default view
	
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
				
					echo "<td> <a href=stat.php?data=".$entry["playerid"].">" . $entry["LastName"] . "</a></td>";
					echo "<td> <a href=stat.php?data=".$entry["playerid"].">" . $entry["FirstName"] . "</a></td>";
					echo "<td>" . $entry["Position"] . "</td>";
					echo "<td>" . $entry["Height"] . "</td>";
					echo "<td>" . $entry["Weight"] . "</td>";
					echo "<td>" . $entry["College"] . "</td>";
			
			echo "</tr>";
		}
		echo "</table>";


	 ?>
	 <img src="images/lebron-james.jpg" style="float:right;height:800px;width:300px">
</article>
</center>



</div>

</body>
</html>
