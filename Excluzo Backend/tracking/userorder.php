<?php

	include "init.php";
    $inputJSON = file_get_contents('php://input');
    $input= json_decode( $inputJSON, TRUE );
	$userid = $input['userid'];
	$items = $input['items'];
        $gender = $input['gender'];
        $location = $input['location'];
	$sql = "Insert into orders(userid,items,gender,location) values ('$userid','$items','$gender','$location');";
	$result = mysqli_query($connection,$sql);
	$response = "";
	if($result){
		$response = array("status" => "success");
	}
	else{
		$response = array("status" => "failed");
	}
	echo json_encode($response);

?>