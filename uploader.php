<html><body>
<?php

	$target_path = "/Applications/MAMP/htdocs/uploads/";
	$target_path1 = $target_path . basename( $_FILES['fileToUpload']['name']);
	$target_path2 = $target_path . basename ( $_FILES['fileToUpload2']['name']); 
	$user = 'root';
	$password = 'root';
	$db = 'LumberYard';
	$host = 'localhost';
	$port = 3306;
	// Create connection
	$conn = new mysqli($host, $user, $password, $db);
	// Check connection
	if ($conn->connect_error) {
    	die("Connection failed: " . $conn->connect_error);
	} 
	//load log demensions
	$myfile = fopen($target_path1, "r") or die("Unable to open file!");
	// Output one line until end-of-file
	$count = 0;
	while(!feof($myfile)) {
  
  		//echo fgets($myfile) . "<br>";
  		$line = fgets($myfile). "<br>";
  		$pieces = explode(" ", $line);
  		$p1 = intval($pieces[0]);
  		$p2 = intval($pieces[1]);
  		$p3 = intval($pieces[2]);
  		//echo $p1." ".$p2. " ".$p3."<br>";
  		if($count > 0){
  			echo $pieces[0]. " ". $pieces[1]. " ". $pieces[2];
  			$sql = "INSERT INTO LOGDEMENSIONS(WIDTH,HEIGHT,LENGTH,DATE)
  			VALUES($p1,$p2,$p3,null)";
  			if($conn->query($sql)===false)echo "error inputting log demensions";
  		}
  	$count++; 
	}
	
	fclose($myfile);
	//load the lumber demensions and prices
	$myfile = fopen($target_path2, "r") or die("Unable to open file!");
	// Output one line until end-of-file
	$count = 0;
	
	
	while(!feof($myfile)) {
  		
  		
  		$line = fgets($myfile). "<br>";
  		//echo $line;
  		$pieces = explode(" ", $line);
  		
  		$p1 = intval($pieces[0]);
  		$p2 = intval($pieces[1]);
  		$p3 = intval($pieces[2]);
  		$p4 = floatval($pieces[3]);
  		
  		
  		
  		if($count > 0){
  			echo $p1. " ". $p2. " ". $p3 . " " . $p4 . "<br>";
  			$sql = "INSERT INTO CURRENTLUMBER(WIDTH,HEIGHT,LENGTH,PRICE,DATE)
  			VALUES($p1,$p2,$p3,$p4,null)";
  			if($conn->query($sql)===false)echo "error inputting lumber prices";
  		}
  	 $count++;
	}
	
	fclose($myfile);
	$count=0;
?>

<h1>Uploading....Done</h1>
<a href="default.php">Go home</a>
</body></html>