<?php

 
	//Haversine formula 
 	function getDistanceBetweenTwoPoints($point1Lat , $point2Lat, $point1Long, $point2Long){
    // array of lat-long i.e  $point1 = [lat,long]
	    $earthRadius = 6371;  // earth radius in km
	    $deltaLat = deg2rad($point2Lat - $point1Lat);
	    $deltaLong = deg2rad($point2Long - $point1Long);
	    $a = sin($deltaLat/2) * sin($deltaLat/2) + cos(deg2rad($point1Lat)) * cos(deg2rad($point2Lat)) * sin($deltaLong/2) * sin($deltaLong/2);
	    $c = 2 * atan2(sqrt($a), sqrt(1-$a));

	    $distance = $earthRadius * $c;
	    return $distance;    // in km
	}


	function loadProducts($itemArr){

		//echo json_encode($itemArr);

		if (count($itemArr) == 0) {
			$noitem = array(
					"status" => "failed",
					"result" => "No items were buyed near your region"
				);

			echo json_encode($noitem);
		}
		else{
			include "init.php";
			$product_array = array();
			for($i = 0; $i < count($itemArr); $i++){
				$prodid = $itemArr[$i];
				$query = "select * from product where productid ='$prodid';";

				$res = mysqli_query($connection, $query);
				if ($res) {
					$num_rows = mysqli_num_rows($res);
					if ($num_rows > 0) {
						$getrow = mysqli_fetch_assoc($res);
						$v = array(
						"productid" => $getrow['productid'],
						"subid" => $getrow['subid'],
						"manuid" => $getrow['manuid'],
						"productname" => $getrow['productname'],
						"description" => $getrow['description'],
						"price" => $getrow['price'],
						"count" => $getrow['stockcount'],
						"image_url" => $getrow['image_url'],
	                    "discout" => $getrow['discount'],
	                    "ratings" => $getrow['ratings'],
	                    "total_ratings" => $getrow['no_of_ratings']
					);
					array_push($product_array, $v);
					}
				}
			}
			$response = array(
		                "status" => "success",
						"product" =>$product_array
					);

			echo json_encode($response);
		}
	}

	include "init.php";

    $inputJSON = file_get_contents('php://input');
    $input= json_decode( $inputJSON, TRUE );

	$latFrom = floatval($input['lat']);
	$longFrom = floatval($input['long']);

	//array of items
	$items = [];
	$sql = "select * from orders";
	$result = mysqli_query($connection, $sql);

	if ($result) {
		while ($row = mysqli_fetch_assoc($result)) {
			$latlong = $row['location'];
			$splitlatlong = explode(",", $latlong);
			$latTo = floatval($splitlatlong[0]);
			$longTo = floatval($splitlatlong[1]);
			$distance = getDistanceBetweenTwoPoints($latFrom,$latTo, $longFrom,$longTo);

			//echo $distance ."<br>";


			//if user is with the range the show the items buyed in the range.
			if ($distance >= 0.0 and $distance < 1.5) {
				$itemstring = $row['items'];
				$itemarray = explode(",", $itemstring);

				//trim the space
				for($i = 0; $i < count($itemarray); $i++){
					$itemarray[$i] = trim($itemarray[$i]," ");
				}
				//remove duplicates from the list
				for($i = 0; $i < count($itemarray); $i++){
					if (!in_array($itemarray[$i], $items)) {
						array_push($items, $itemarray[$i]);
					}
					else{
						continue;
					}
				}
			}
			else{
				continue;
			}
		}

		//echo json_encode($items);
		//load products according to productid
		loadProducts($items);
	}

	mysqli_close($connection);
?>