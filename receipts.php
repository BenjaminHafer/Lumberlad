<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
	.bgimg{
    min-height: 40%;
    background-position: center;
    background-size: cover;
	}
	.bgimg {background-image: url("http://cdn.pcwallart.com/images/dark-forest-background-wallpaper-3.jpg")}
</style>
<!-- Header -->
<header class="w3-display-container w3-wide bgimg w3-grayscale-min" id="home">
  <div class="w3-display-middle w3-text-white w3-center">
    <h1 class="w3-jumbo">LumberLads</h1>
    <h2><b>Fall 2016</b></h2>
  </div>
</header>
<body>
<p>Here you can search for a previous order's receipt.</p>
<form action="receiptreturn.php" method="post" enctype="multipart/form-data">
    	Enter in your order number:
    	<input type="text" name="orderNumber" id="orderNumber" size= 10>
    	<br>
    	-Or- Enter your Last Name:
    	<input type="text" name="lastName" id="lastName"><br>
    	<input type="submit" value="Lookup Order" name="submit" >
</form> 

<!-------------  This is the nav bar at the bottom of the page ------------->
</div>
<div class="w3-bottom w3-hide-small">
  <ul class="w3-navbar w3-white w3-center w3-padding-8 w3-opacity-min w3-hover-opacity-off">
    <li style="width:25%"><a href="index.html" class="w3-margin-left w3-round">Home</a></li>
    <li style="width:25%"><a href="viewInventory.php" class="w3-round">View Inventory</a></li>
    <li style="width:25%"><a href="placeOrder.php" class="w3-round">Place Order</a></li>
    <li style="width:25%"><a href="receipts.php" class="w3-margin-right w3-round w3-hover-black">View Receipts</a></li>
  </ul>
</div>

</body></html>
