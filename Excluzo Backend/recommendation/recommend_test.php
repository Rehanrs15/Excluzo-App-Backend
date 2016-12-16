<?php

require_once("recommend.php");
require_once("itembased.php");

//get the userid
 $inputJSON = file_get_contents('php://input');
 $input= json_decode( $inputJSON, TRUE );
 $userid = $input['userid'];

$re = new Recommend();
$resp = $re->getRecommendations($userObject, "6");

$final = array();
$final = array(
		"status" => "success",
		"product" => array($resp)
		);

//echo json_encode($final);
//echo json_encode($resp);


//get all the keys from $resp and convert it to array
$itemArray = array();
foreach ($resp as $key => $value) {
	array_push($itemArray, trim($key));
}

//echo json_encode($itemArray);

//fetch each productid details 
loadProducts($itemArray);


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


?>