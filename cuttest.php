<?php
	include 'Log.php';
	include 'Lumber.php';
	include 'connection.php';
	$conn = new mysqli($host, $user, $password, $db);
	echo "<br>Logs:<br>";
	
			$mylog = new Log();
    		$mylog->width = intval(7);
    		$mylog->height = intval(7);
    		$mylog->length = 96;
    		echo $mylog->width . " X " . $mylog->height . " X " . $mylog->length . "<br>";
	echo "\nLumber:<br>";
	$lumberTypes = array();
	
    	
    	$mylumber->width = 1;
    	$mylumber->height = 2;
    	$mylumber->length = 96;
    	$mylumber->price = 1.00;
    	array_push($lumberTypes,$mylumber);
    	$mylumber1 = new Lumber();
    	$mylumber1->width = 2;
    	$mylumber1->height = 4;
    	$mylumber1->length = 96;
    	$mylumber1->price = 2.00;
    	array_push($lumberTypes,$mylumber1);
    	$mylumber2->width = 4;
    	$mylumber2->height = 4;
    	$mylumber2->length = 96;
    	$mylumber2->price = 4.00;
    	array_push($lumberTypes,$mylumber2);
    	
	
	foreach($lumberTypes as $lumber){
		echo $lumber->width . " X " . $lumber->height . " X " . $lumber->length . " X " .
				$lumber->price . "<br>";
	}
	
	
	/*
						Here is where we start cuttin logz
	*/
	cutWood($mylog, $lumberTypes);
	

?>
<?php

function cutWood($log,$mylumberTypes){
	$logH = $log->height;
	$logW = $log->width;
	$lumH = $mylumberTypes[2]->height;
	$lumW = $mylumberTypes[2]->width;
	$lumP = $mylumberTypes[2]->price;
	$totval = 0;
	$cut1val = 0;
	$cut2val = 0;
	if($logH >= $lumH  && $logW >= $lumW)
		$cut1val = intval($logH/$lumH) * intval($logW/$lumW) * $lumP;
	
	if($logH >= $lumW  && $logW >= $lumH)
		$cut2val = intval($logH/$lumW) * intval($logW/$lumH) * $lumP;
	
	//this if statement is for the largest lumber
	if($cut1val < $cut2val){
		$totval = $totval + intval($logH/$lumw) * intval($logW/$lumH) * $lumP;
		//get both remaining areas
		$a1H = $logH % $lumW;
		$a1W = $logW;
		$a2H = $logH - $logH % $lumW;
		$a2W = $logW%$lumH;
		
		$a3H = $logH % $lumW;
		$a3W = $logW - $logW%$lumH;
		$a4H = $logH;
		$a4W = $logW%$lumH;
		
		echo "A1: " .$a1H . " " . $a1W . " " . $a2H . " " . $a2W . "<br>";
		echo "At: " .$a3H . " " . $a3W . " " . $a4H . " " . $a4W . "<br>";
	}
	
	//this else is or largest lumber
	else{
		$totval = $totval + intval($logH/$lumH) * intval($logW/$lumW) * $lumP;
		//get both remaining areas
		$a1H = $logH % $lumH;
		$a1W = $logW;
		$a2H = $logH - $logH % $lumH;
		$a2W = $logW % $lumW;
		$a3H = $logH % $lumH;
		$a3W = $logW - $logW % $lumW;
		$a4H = $logH;
		$a4W = $logW % $lumW;
		echo "A1: " .$a1H . "x" . $a1W . " A2: " . $a2H . "x" . $a2W . "<br>";
		echo "A3: " .$a3H . "x" . $a3W . " A4:" . $a4H . "x" . $a4W . "<br>";
		echo "Total Worth: $" . $totval . "<br>" . $lumW ,"X" . $lumH . "'s:" . (intval($logH/$lumH) * intval($logW/$lumW));
		
		//now we check the second most expensive cut of lumber
		$lumH = $mylumberTypes[1]->height;
		$lumW = $mylumberTypes[1]->width;
		$lumP = $mylumberTypes[1]->price;
		
		//possible cuts for each area
		if($a1H >= $lumH  && $a1W >= $lumW)
			$cut1a1val = intval($a1H/$lumH) * intval($a1W/$lumW) * $lumP;
		if($a1H >= $lumW  && $a1W >= $lumH)
			$cut2a1val = intval($a1H/$lumW) * intval($a1W/$lumH) * $lumP;
		if($a2H >= $lumH  && $a2W >= $lumW)
			$cut1a2val = intval($a2H/$lumH) * intval($a2W/$lumW) * $lumP;
		if($a2H >= $lumW  && $a2W >= $lumH)
			$cut2a2val = intval($a2H/$lumW) * intval($a2W/$lumH) * $lumP;
		if($a3H >= $lumH  && $a3W >= $lumW)
			$cut1a3val = intval($a3H/$lumH) * intval($a3W/$lumW) * $lumP;
		if($a3H >= $lumW  && $a3W >= $lumH)
			$cut2a3vl = intval($a3H/$lumW) * intval($a3W/$lumH) * $lumP;
		if($a4H >= $lumH  && $a4W >= $lumW)
			$cut1a4val = intval($a4H/$lumH) * intval($a4W/$lumW) * $lumP;
		if($a4H >= $lumW  && $a4W >= $lumH)
			$cut2a4val = intval($a4H/$lumW) * intval($a4W/$lumH) * $lumP;
		
		//determine best cut for each of the 4 possible new areas
		$cuta1 = pickCut($cut1a1val,$cut2a1val);
		echo "c1" .$cuta1;
		$cuta2 = pickCut($cut1a2val,$cut2a2val);
		echo "c2" . $cuta2;
		$cuta3 = pickCut($cut1a3val,$cut2a3val);
		echo "c3" . $cuta3;
		$cuta4 = pickCut($cut1a4val,$cut2a4val);
		echo "c4" . $cuta4;
		if(($cuta1 + $cuta2) < ($cuta3 + $cuta4)){
			//got with a3 and a4
			echo "<br>Pick a3 and a4";
			//for a3
			if ($cut1a3 > $cut2a3){
				$totval = $totval + intval($a3H/$lumW) * intval($a3W/$lumH) * $lumP;
				echo "<br>total val1: " . $totval . " " . $a3H . $lumW;
			}
			else{
				$totval = $totval + intval($a3H/$lumW) * intval($a3W/$lumH) * $lumP;
				echo "<br>total val: " . $totval . "ah " . $a3H . " lw" . $lumH;
				echo "<br>aw" . $a3W . " lh " . $lumW;
			}
		}
		else{
			//go with a1 and a2//
			echo "<br>pick a1 and a2";
			
		}
		
		
	}
	//echo $totval;
	
}

function pickCut($cut1,$cut2){
	if($cut1 > $cut2){
		return $cut1;
	}
	else {
		return $cut2;
	}
}
function canCut($areaH,$areaW,$lumh,$lumW){
	if($areaH >= $lumH && $areaW >= $lumW){
		return 1;
	}
	else if($areaH >= $lumW && $areaW >= $lumH){
		return 2;
	}
	else{
		return 0;
	}
}
?>

















