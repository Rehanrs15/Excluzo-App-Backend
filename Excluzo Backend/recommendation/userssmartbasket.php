<?php



	function loadItems($smartbasketitem){

		include "init.php";

		//echo json_encode(array_keys($smartbasketitem));
		$itemarray = array_keys($smartbasketitem);
		//echo json_encode($itemarray);
		$product_array = array();
		for ($i = 0; $i < count($itemarray); $i++) {
			$prodid =  $itemarray[$i];
			$query = "select * from product where productid='$prodid';";

			$res = mysqli_query($connection,$query);
			if($res){
				$num_rows = mysqli_num_rows($res);
				if ($num_rows > 0) {
					$row = mysqli_fetch_assoc($res);
					$v = array(
						"productid" => $row['productid'],
						"subid" => $row['subid'],
						"manuid" => $row['manuid'],
						"productname" => $row['productname'],
						"description" => $row['description'],
						"price" => $row['price'],
						"count" => $row['stockcount'],
						"image_url" => $row['image_url'],
                         "discout" => $row['discount'],
                          "ratings" => $row['ratings'],
                          "total_ratings" => $row['no_of_ratings']
						);
					array_push($product_array, $v);
				//echo json_encode($v);
				}
			}	
		}

		$response = array(
                                "status" => "success",
				"product" =>$product_array
			);

		echo json_encode($response);
	}

	include "init.php"; 
    $inputJSON = file_get_contents('php://input');
    $input= json_decode( $inputJSON, TRUE );

    //get the userid
    $userid = $input['userid'];  
	$query = "select * from orders where userid='$userid';";

	$result = mysqli_query($connection,$query);
	$user_item = [];
	while($row = mysqli_fetch_assoc($result)){
		$userid = $row['userid'];
		$items = $row['items'];
		$itemsarray = explode(',', $items);


		//trim the space
		for($i = 0; $i < count($itemsarray); $i++){
			$itemsarray[$i] = trim($itemsarray[$i]," ");
		}

		for ($i=0; $i < count($itemsarray); $i++) { 
			if (in_array($itemsarray[$i],array_keys($user_item))) {
				$getvalue = $user_item[$itemsarray[$i]];
				$getvalue = $getvalue + 1;
				$user_item[$itemsarray[$i]] = $getvalue;
			}
			else{
				$user_item[$itemsarray[$i]] = 1;
			}
		}
	}

	//echo json_encode($user_item);
	//find the MEAN


	$N = count($user_item);
	$sum = 0;

	//user has not ordered anything
	if($N <= 0){
		$failed = array(
					"status" => "failed",
					"result" => "no orders before - buy some item to recommend"
					);
		echo json_encode($failed);
	}
	else{

		//echo json_encode($user_item);
		foreach ($user_item as $key => $value) {
			$sum = $sum + $value;
		}

		$MEAN = ceil($sum/$N);
		//echo $MEAN;


		//take only those values greater than MEAN
		$smartbasketitem = [];
		foreach ($user_item as $key => $value) {
			if ($value >= $MEAN) {
				$smartbasketitem[$key] = $value;
			}
			else{
				continue;
			}
		}

		//echo json_encode($smartbasketitem);
		//get the productobject from DATABASE
		loadItems($smartbasketitem);
	}

?>