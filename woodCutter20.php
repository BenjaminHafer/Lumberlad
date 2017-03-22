<!this will be used for processing logs from db>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
	include "connection.php";
	include "Log.php";
	include "Lumber.php";
	include "Cut.php";
	include "Area.php";
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
    		$mylog->width = $row['WIDTH'];
    		$mylog->height = $row['HEIGHT'];
    		$mylog->length = $row['LENGTH'];
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
    	$mylumber->width = $row['WIDTH'];
    	$mylumber->height = $row['HEIGHT'];
    	$mylumber->length = $row['LENGTH'];
    	$mylumber->price = $row['PRICE'];
    	array_push($lumberTypes,$mylumber);
    	}
	} else {
    	echo "0 results";
	}
	foreach($lumberTypes as $lumber){
		$lum = new Lumber();
		$lum->width = $lumber->height;
		$lum->height = $lumber->width;
		$lum->length = $lumber->length;
		$lum->price = $lumber->price;
		array_push($lumberTypes,$lum);
		
		
	}
	
	usort($lumberTypes,"cmp");
	$lumberTypes = array_reverse($lumberTypes);
	
	foreach($lumberTypes as $lumber){
		echo $lumber->width . " X " . $lumber->height . " X " . $lumber->length . " X " .
				$lumber->price . "<br>";
	}
	/****************************************************************************
		Cuting starts here
	******************************************************************************/
	
	function makeCutsTest($lumberTypes,$logs){
	echo "Cutting Lumber..<br><br>";
	
	$i = 0;
	foreach($logs as $myLog){
		
		$i++;
	$logw = $myLog->height;
	$logh = $myLog->width;
	$logl = $myLog->length;
	
		
		$bestcuts = array();
		$idnum = 1;
		$origin = new Cut();
		$origin->id = 0;
		foreach($lumberTypes as $lum){
			$lumh = $lum->height;
			$lumw = $lum->width;
			$price = $lum->price;
			$luml = $lum->length;
			$cut = new Cut();
			$cut = makeCuts($logh,$logw,$lumh,$lumw,$price);
			$cut->parentid = 0;
			$cut->id = $idnum;
			$cut->mytype = (string)($lumh . "x" . $lumw);
			$cut->length = $luml;
			$cut->width = $lumw;
			$cut->height = $lumh;
			$idnum++;
			if($cut->val > 0){
				$key = $cut->id;
				$bestcuts[$key] = $cut;
			//array_push($bestcuts,$cut);
			}
			//echo "<br>Value of first cut: ***************************************************";	
			//echo "<br>cut: " . $cut->mytype . " $" . $cut->val. " id:" .$cut->id . "<br>";
			$area = $cut->areas;
			while($area != null){
				foreach($area as $x => $x_val){
			
					//echo "<br>**********area to fit in: = " . $x . " Values: " . $x_val->high . "X" . $x_val->wid . "<br>";
					$log1h = $x_val->high;
					$log1w = $x_val->wid;
			
					foreach($lumberTypes as $lum1){ // foreach 1
						$lum1h = $lum1->height;
						$lum1w= $lum1->width;
						$price1 = $lum1->price;
						$cut2 = new Cut();
						$cut2 = makeCuts($log1h,$log1w,$lum1h,$lum1w,$price1);
					
						$cut2->parentid = $cut->id;
					
						$cut2->mytype = (string)($lum1h . "x" . $lum1w);
						$cut2->length = $lum1->length;
						$cut2->width = $lum1->width;
						$cut2->height = $lum1->height;
						if($cut2->val > 0){
					  	$cut2->id = $idnum;
					  	$cut2->val = $cut2->val + $cut->val;
	
					  	$key = $cut2->id;
				  		
					  	$bestcuts[$key] = $cut2;
					   	$idnum++;
					 }//close foreach 1
				 
						 //if($cut2->val > 0){
			
						//echo "<br>Value of inner cut:";
						//echo "<br>cut: " . $cut2->mytype . "Quantity: " .
						//$cut2->quan . " $" . $cut2->val. " parent id: " . $cut2->parentid . " id: " .
						//										$cut2->id .  "<br>";
						//}
					$cut->areas = $cut2->areas;
					$area = $cut->areas;
				}// for each two
			}//while
			//since cut2 relies on cut values reassign for proper parent id'ing
			$cut = $cut2;
		}//foreach lumber
		
	}//for each log
	
	$maxval = 0;
	$maxCut = new Cut();
	foreach($bestcuts as $thiscut){
		if($thiscut->val > $maxval){
		 $maxval = $thiscut->val;
		 $maxCut = $thiscut;
		 }
	}
	
	
	$logvolume = $logh * $logw * $logl;
	echo "<br> " . $logw . " x " . $logh . " x " . $logl;
	echo "<br>The max value from log " . $i . " is: $" . $maxval . "<br>";
	

	while($maxCut->parentid != 0){
		$maxCut->quan = intval($maxCut->quan) * intval($logl/$maxCut->length);
		echo "<br>Cut " . $maxCut->quan . " " . $maxCut->mytype . "\'s PID: " . $maxCut->parentid .
					"Id: ".$maxCut->id ." Valued at $" . $maxCut->val . "<br>";
		
		$logvolume = $logvolume - $maxCut->quan * intval($maxCut->width) * intval($maxCut->height) 
											* intval($maxCut->length);	
		
		$pid = intval($maxCut->parentid);
		foreach($bestcuts as $cut){
			if($cut->id == $pid){
				$maxCut = $cut;
				
			}
		}
		
		
	}//closes while statement
	
	$maxCut->quan = intval($maxCut->quan) * intval($logl/$maxCut->length);
	echo "<br>Cut " . $maxCut->quan . " " . $maxCut->mytype . "\'s PID: " . $maxCut->parentid .
					" Id: ".$maxCut->id ." Valued at $" . $maxCut->val . "<br>";
	echo "<br>" . $maxCut->length . "<br>";
	echo "<br>" . intval($logl/$maxCut->length) . "<br>";
	
	$logvolume = $logvolume - $maxCut->quan  * intval($maxCut->width) * intval($maxCut->height)
									* intval($maxCut->length);
	
	echo "<br>Scrap: " . number_format($logvolume/1728,3) . " cubic feet.<br>";
		
	}
	echo "<br><a href=woodcutter.php>go back</a>";
	echo "<br><a href=index.html>Home</a>";
	}// close function
	
	?>
	</td>
</tr>
</table>
</div>
<div align="center">
	<p>Please confirm if you would like to authorize the cuts.</p>
	<input type="submit" name="agree" onclick="document.write('<?php makeCutsTest($lumberTypes,$logs) ?>');" value="yes">
	<input type="submit" value="no">
</div>
<script>

</script>
<?php
function cmp($a, $b)
{
	return ($a-> price > $b -> price) ? +1 : -1;
}
/*************************************************************************************
				Helper functions for the main algorithm
	*************************************************************************************/
	function makecutshelperUp($a,$b,$c,$d){
		if($a < $c){
			return 0; 
		}
		else{
			return 1 + makecutshelperup($a-$c,$b,$c,$d);
		}
	}
	function makecutshelperside($a,$b,$c,$d){
		if($b < $d){
			return 0; 
		}
		else{
			return  1 + makecutshelperside($a,$b-$d,$c,$d);
		}
	}
	/*************************************************************************************
				Main Portion
	*************************************************************************************/
	function makeCuts($a,$b,$c,$d, $price){
		$thiscut = new Cut();
		$quantity1 = makecutshelperup($a,$b,$c,$d);
		$quantity2 = makecutshelperside($a,$b,$c,$d);
		$totalpieces = $quantity1 *$quantity2;
		$areas = array();
		if($a >= $c && $b >= $d){
			$a1 = new Area();
			$a1->high = $a%$c;
			$a1->wid = $b;
			$areas['a1'] = $a1;
		}
		if($a >= $d && $b >= $c){
			$a2 = new Area();
			$a2->high = $a - $a%$c;
			$a2->wid = $b%$d;
			$areas['a2'] = $a2;
		}
		if($a >= $c && $b >= $d){
			$a3 = new Area();
			$a3->high = $a%$c;
			$a3->wid = $b - $b%$d;
			$areas['a3'] = $a3;
		}
		if($a > $d && $b > $c){
			$a4 = new Area();
			$a4->high = $a;
			$a4->wid = $b%$d;
			$areas['a4'] = $a4;
		}
		$thiscut->quan = $totalpieces;
		$thiscut->val = $totalpieces * $price;
		$thiscut->areas = $areas;
		return $thiscut;		
	}
?>
</body></html>