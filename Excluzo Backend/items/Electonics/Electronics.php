<?php

	include "init.php";
    $inputJSON = file_get_contents('php://input');
    $input= json_decode( $inputJSON, TRUE );



	//------ test data
	//$sub_id = "001";
	//------

	/*----
	-----send this using POST
	*/
	$sub_id = $input['subcategory_id'];
	/*
	------
	*/


	/*----
	-----send this using GET
	
	//$sub_id = $_GET['subcategory_id'];
	
	------
	*/


	$sql = "select * from product where subid = '$sub_id';";
	
	$result = mysqli_query($connection,$sql);
	$num_of_rows = mysqli_num_rows($result);
	
	if (mysqli_num_rows($result) > 0) {
		$response = array();
		while($row = mysqli_fetch_assoc($result)) {
			$arr = array("productid" => $row["productid"],
								"subid" => $row["subid"],
								"manuid" => $row["manuid"],
								"productname" => $row["productname"],
								"description" => $row["description"],
								"price" => $row["price"],
								"count" => $row["stockcount"],
								"image_url" => $row["image_url"],
                                                                "discout" => $row["discount"],
                                                                "ratings" => $row["ratings"],
                                                                "total_ratings" => $row["no_of_ratings"]);
			array_push($response,$arr);
		}
		$response = array(
							"status" => "success",
							"product" => $response
						);
		echo json_encode($response);
		
	} else {
		$fail = array("status" => "failed");
		echo json_encode($fail);
	}

	mysqli_close($connection);
?>