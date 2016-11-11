<?php

	include "init.php";
        $inputJSON = file_get_contents('php://input');
        $input= json_decode( $inputJSON, TRUE );
	//get the user id
	$uid = $input['userid'];



	$sql = "select * from orders;";

	$result = mysqli_query($connection,$sql);

	$user_item = [];
	while($row = mysqli_fetch_assoc($result)){
		$userid = $row['userid'];
		$items = $row['items'];
		$itemsarray = explode(',', $items);

		//trim the space
		for($i = 0; $i < count($itemsarray); $i++){
			$itemsarray[$i] = trim($itemsarray[$i]," ");
		}

		if(!in_array($userid, array_keys($user_item))){
			$user_item[$userid] = $itemsarray;
		}
		else{
			$values = $user_item[$userid];
			$arr = array_unique(array_merge($values,$itemsarray));
			$user_item[$userid] = $arr;
		}
	}

	$u = $user_item;
       // echo json_encode($u);
        if (in_array($uid, array_keys($u))) {		
		$recommended_item_id = (recommendations($uid, $u));
		displayItems($recommended_item_id);

	}
	else{
		$noitem = array(
					"status" => "failed",
					"result" => "new user - buy some item to recommend"
				);

		echo json_encode($noitem);
	}



// $for = the user we are getting rec's for
// $user_array = the list of all users

function recommendations($for, $user_array) {

    // For storing the best matching user
    $best_match = array('name'=>'', 'count'=>0);

    foreach ($user_array as $name=>$items) {

        // If this user, skip
        if ($name==$for) continue;

        // Number of matching records
        $c = count(array_intersect($items, $user_array[$for]));

        // If better than the current best match, replace
        if ($c > $best_match['count']) {
            $best_match = array('name'=>$name, 'count'=>$c);
        }
    }

    // If no matches found, return false
    if ($best_match['count']==0)
        return false;

    // Return array of recommendations
    return array_diff($user_array[$best_match['name']], $user_array[$for]);
}



function displayItems($item_ids){
	include "init.php";

	//echo json_encode($item_ids);
	$product_array = array();
	foreach ($item_ids as $key => $value) {
		$query = "select * from product where productid='$value';";

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
			}
		}		

	}

        

	$response = array(
                                "status" => "success",
				"product" =>$product_array
			);

	echo json_encode($response);
}

  
?>