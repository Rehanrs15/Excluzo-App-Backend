<?php
	
	include "init.php";

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


	$userObject = array();

	foreach ($user_item as $key => $value) {
		$u = array();
		for ($i=0; $i < count($value); $i++) { 
			$u[$value[$i]] = "1";
		}
		$userObject[$key] = $u;
	}

	//echo json_encode($user_item);
	//echo json_encode($userObject);


?>