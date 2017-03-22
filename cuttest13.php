<?php
	include 'Lumber.php';
	$logh = 7;
	$logw = 7;

	$lum1 = new Lumber();
	$lum1->height = 4;
	$lum1->width = 4;
	$lum1->price = 11.00;
	
	$lum2 = new Lumber();
	$lum2->height = 2;
	$lum2->width = 4;
	$lum2->price = 5.00;
	
	$lum3 = new Lumber();
	$lum3->height = 4;
	$lum3->width = 2;
	$lum3->price = 5.00;
	
	$lum4 = new Lumber();
	$lum4->height = 1;
	$lum4->width = 2;
	$lum4->price = 1.00;
	$lum5 = new Lumber();
	$lum5->height = 2;
	$lum5->width = 1;
	$lum5->price = 1.00;
	
	$lumbertypes = array($lum1,$lum2, $lum3, $lum4, $lum5);
	
	$bestcuts = array();
	$area1 = array();
	$logarea = new Area();
	$logarea->wid = $logw;
	$logarea->height = $logh;
	
	
	echo "here";
?>

<?php

function makeCuts($a,$b,$c,$d, $price){
		$thiscut = new Cut();
		$quantity1 = makecutshelperup($a,$b,$c,$d);
		$quantity2 = makecutshelperside($a,$b,$c,$d);
		$totalpieces = $quantity1 *$quantity2;
		$areas = array();
		if($a >= 1 && $b >= 1){
			$a1 = new Area();
			$a1->high = $a%$c;
			$a1->wid = $b;
			$areas['a1'] = $a1;
		}
		if($a >= 1 && $b >= 1){
			$a2 = new Area();
			$a2->high = $a - $a%$c;
			$a2->wid = $b%$d;
			$areas['a2'] = $a2;
		}
		if($a >= 1 && $b >= 1){
			$a3 = new Area();
			$a3->high = $a%$c;
			$a3->wid = $b - $b%$d;
			$areas['a3'] = $a3;
		}
		if($a >= 1 && $b >= 1){
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
<?php

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
	class Cut{
		var $quan = 0,
		    $val = 0,
		    $areas = array(),
		    $parentID = null,
		    $id = 0,
		    $mytype;
	}
	class Area{
		var $high = 0,
		    $wid = 0;
	}		
?>