<!this will be used for processing logs from db>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
	include 'connection.php';
	include "Log.php";
	include "Lumber.php";
	// Create connection
	$conn = new mysqli($host, $user, $password, $db);
	
	
?>
<h1 align = "center">Where the magic happens.</h1>
<div align = "center">
<table>
<tr>
<td>Theses are the current logs that need to be cut for lumber.<br><div align="center">(W-H-L)</div></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>These are the most up to date prices and types of lumber <br>cuts that we can perform.
	W-H-L-P</td>
</tr>
<tr>
	<td>
	<?php
	$logs = array();
	//select the most recently added log demensions 
	$sql = "SELECT * FROM LOGDEMENSIONS WHERE DATE IN (SELECT max(DATE) FROM LOGDEMENSIONS)";
	$result = $conn -> query($sql);
	if($result ->num_rows > 0 ) {
		while($row = $result->fetch_assoc()) {
			$mylog = new Log();
    		$mylog->width = $row['width'];
    		$mylog->height = $row['height'];
    		$mylog->length = $row['length'];
    		//echo $mylog->width . " X " . $mylog->height . " X " . $mylog->length . "<br>";
    		array_push($logs,$mylog);
    	}
    	
	} else {
    	echo "0 results";
	}

	foreach($logs as $log){
		//print_r($log);
		echo "<br>";
		echo $log-> width . " X " . $log -> height . " X " . $log ->length;
	}
	
	
	echo "</td><td></td><td>";
	$lumberTypes = array();
	//select the most recently added Current lumber 
	$sql = "SELECT * FROM CURRENTLUMBER WHERE DATE IN (SELECT max(DATE) FROM CURRENTLUMBER)";
	$result = $conn -> query($sql);
	if($result ->num_rows > 0 ) {
	while($row = $result->fetch_assoc()) {
    	//echo "W " . $row["width"]. " - H " . $row["height"]. " L" . $row["length"]. " P ". 
    	//$row["price"]. " D ". $row["DATE"]. "<br>";
    	$mylumber = new Lumber();
    	$mylumber->width = $row['width'];
    	$mylumber->height = $row['height'];
    	$mylumber->length = $row['length'];
    	$mylumber->price = $row['price'];
    	array_push($lumberTypes,$mylumber);
    	}
	} else {
    	echo "0 results";
	}
	
	foreach($lumberTypes as $lumber){
		echo $lumber->width . " X " . $lumber->height . " X " . $lumber->length . " X " .
				$lumber->price . "<br>";
	}
	function makeCuts($lumberTypes,$logs){
	echo "Cutting Lumber..<br><br>";
		foreach($lumberTypes as $lumber){
		echo $lumber->width . " X " . $lumber->height . " X " . $lumber->length . " X " .
				$lumber->price . "<br>";
	}
	echo "<br>";
	foreach($logs as $log){
		//print_r($log);
		echo "<br>";
		echo $log-> width . " X " . $log -> height . " X " . $log ->length;
	}
	echo "<a href=woodCutter.php>go back</a>";
	
	}
	?>
	</td>
</tr>
</table>
</div>
<div align="center">
	<p>Please confirm if you would like to authorize the cuts.</p>
	<input type="submit" name="agree" onclick="document.write('<?php makeCuts($lumberTypes,$logs) ?>');" value="yes">
	<input type="submit" value="no">
</div>
<script>

</script>
<?php

?>
</html></body>