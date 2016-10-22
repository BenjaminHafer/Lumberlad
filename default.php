<html><body>
<?php
echo '<h1>Welcome to LumberYard 420</h1>';

?>
<script>
window.onload = function(){//window.addEventListener('load',function(){...}); (for Netscape) and window.attachEvent('onload',function(){...}); (for IE and Opera) also work
    //alert('I know what you have been googling ;)');
}
</script>
<p>Would you like to cut some wood??? If so, let us handle your log(s),
<br>and what kind of lumber you would like and let us do the rest!</p>
<div>
	<div name="uploadForm" style="border:1px solid black; 
							   margin-right: 50%;">
	<form action="uploader.php" method="post" enctype="multipart/form-data">
    	Select file to upload for Log Demensions:
    	<input type="file" name="fileToUpload" id="fileToUpload">
    
    	<br>
    	Select file to upload for Lumber Dimensions:
    	<input type="file" name="fileToUpload2" id="fileToUpload2"><br>
    	<div align="center">
    		<input type="submit" value="Upload File" name="submit" >
   		</div>
<?php
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

/*/reads values from db***************************
$sql = "SELECT * FROM CURRENTLUMBER";
// Perform Query
$result = $conn->query($sql);

echo "Size:".sizeof($result)."<br>";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

//*****************************/
/*
$myfile = fopen("uploads/mydata2.txt", "r") or die("Unable to open file!");
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
  	if($conn->query($sql)===false)echo "error";
  }
  $count++;
  
}
fclose($myfile);
*/
?>
	</form>
</div>
</div>
</body></html>