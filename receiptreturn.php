<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" type="text/css" href="style.css">
<header class="w3-display-container w3-wide bgimg w3-grayscale-min" id="home">
  <div class="w3-display-middle w3-text-white w3-center">
    <h1 class="w3-jumbo">LumberLads</h1>
    <h2><b>Fall 2016</b></h2>
  </div>
</header>
<style>
	.bgimg{
    min-height: 30%;
    background-position: center;
    background-size: cover;
	}
	.bgimg {background-image: url("http://cdn.pcwallart.com/images/dark-forest-background-wallpaper-3.jpg")}
</style>
    <body>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <form action='receiptreturn.php' method='get'>
            <table class="table table-hover">
                <tr>
                    <th><a href="?sortby=firstName" type="submit" name="firstName" id="firstName" value="firstName">First Name</a></th>
                    <th><a href="?sortby=lastName" name="sortby" id="lastName" value="lastName">Last Name</a></th>
                    <th><a href="?sortby=Address" name="sortby" id="Address" value="Address">Address</a></th>
                    <th><a href="?sortby=City" name="sortby" id="City" value="City">City</a></th>
                    <th><a href="?sortby=State" name="sortby" id="State" value="State">State</a></th>
                    <th><a href="?sortby=Zip_Code" name="sortby" id="Zip_Code" value="Zip_Code">Zip Code</a></th>
                </tr>
                <tr>
                    <?php
                        include "connection.php";
                       
                        $conn = new mysqli($host, $user, $password, $db);

                        if(!empty($_POST["orderNumber"])) {
                            $query1 = "SELECT * from receipts WHERE orderNumber ='{$_POST['orderNumber']}'LIMIT 0,1";
                            $result1 = $conn -> query($query1);

                            while ($row = mysqli_fetch_assoc($result1)) {
                                print "<td>{$row['firstName']}</td>
                                <td>{$row['lastName']}</td>
                                <td>{$row['Address']}</td>
                                <td>{$row['City']}</td>
                                <td>{$row['State']}</td>
                                <td>{$row['Zip_Code']}</td>
                                <form method='post' action='receiptreturn.php'>
                                    <input type='hidden' name='id' id='id' value=".$row['id']." />
                                </form>";
                            }
                        }
                        else {
                          $lastName = "Select orderNumber FROM receipts WHERE lastName = '{$_POST['lastName']}'LIMIT 0,1";
                          $result2 = $conn -> query($lastName);

                          while ($row = mysqli_fetch_assoc($result2)) {
                            $orderNumber = $row['orderNumber'];

                            $query2 = "SELECT * from receipts WHERE orderNumber ='$orderNumber'LIMIT 0,1";
                            $result2 = $conn -> query($query2);

                              while ($row = mysqli_fetch_assoc($result2)) {
                                print "<td>{$row['firstName']}</td>
                                <td>{$row['lastName']}</td>
                                <td>{$row['Address']}</td>
                                <td>{$row['City']}</td>
                                <td>{$row['State']}</td>
                                <td>{$row['Zip_Code']}</td>
                                <form method='post' action='receiptreturn.php'>
                                  <input type='hidden' name='id' id='id' value=".$row['id']." />
                                </form>";
                          }
                          }
                        }
                    ?>
                </tr>
            </table>
        </form>
        <form action='receiptreturn.php' method='get'>
            <table class="table table-hover">
                <tr>
                    <th><a href="?sortby=orderNumber" type="submit" name="orderNumber" id="orderNumber" value="orderNumber">Ordernumber</a></th>
                    <th><a href="?sortby=type" name="type" id="type" value="type">Type</a></th>
                    <th><a href="?sortby=count" name="sortby" id="count" value="count">Count</a></th>
                    <th><a href="?sortby=price" name="sortby" id="price" value="price">Price</a></th>
                    <th><a href="?sortby=total" name="sortby" id="total" value="total">Total</a></th>
                </tr>
                <?php
                    if(!empty($_POST["orderNumber"])) {
                        $query = "SELECT * FROM inventoryreceipts WHERE orderNumber='{$_POST['orderNumber']}'";
                        $result = $conn -> query($query);

                        while ($row = mysqli_fetch_assoc($result)) {
                            print "<tr>
                                <td>{$row['orderNumber']}</td>
                                <td>{$row['type']}</td>
                                <td>{$row['count']}</td>
                                <td>{$row['price']}</td>
                                <td>{$row['total']}</td>
                                <form method='post' action='receiptreturn.php'>
                                    <input type='hidden' name='id' id='id' value=".$row['id']." />
                                </form>
                            </tr>";
                        }
                    }
                    else {
                      $lastName = "Select orderNumber FROM receipts WHERE lastName = '{$_POST['lastName']}'";
                      $result = $conn -> query($lastName);

                      while ($row = mysqli_fetch_assoc($result)) {
                        $orderNumber = $row['orderNumber'];
                        $query = "SELECT * FROM inventoryreceipts WHERE orderNumber= '$orderNumber'";
                        $result2 = $conn -> query($query);

                          while ($row2 = mysqli_fetch_assoc($result2)) {
                            print "<tr>
                              <td>{$row2['orderNumber']}</td>
                              <td>{$row2['type']}</td>
                              <td>{$row2['count']}</td>
                              <td>\${$row2['price']}</td>
                              <td>\${$row2['total']}</td>
                              <form method='post' action='receiptreturn.php'>
                                  <input type='hidden' name='id' id='id' value=".$row2['id']." />
                              </form>
                          </tr>";
                        }
                    }
                  }
                ?>
            </table>
        </form>
        <div class="w3-hide-small">
  <ul class="w3-navbar w3-black w3-center w3-padding-8 w3-opacity-min w3-hover-opacity-off">
  	<li style="width:8%">
  	<a href="index.html">
  	<img src="images/home-icon.png" style="width:32px;height:32px;border:10px">
	</a>
	</li>
    <li style="width:23%"><a href="default.php" class="w3-margin-left w3-round">Input Logs</a></li>
    <li style="width:23%"><a href="viewInventory.php" class="w3-round">View Inventory</a></li>
    <li style="width:23%"><a href="placeOrder.php" class="w3-round">Place Order</a></li>
    <li style="width:23%"><a href="receipts.php" class="w3-margin-right w3-round">View Receipts</a></li>
  </ul>
</div>
    </body>
</html>
