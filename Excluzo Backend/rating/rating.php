<?php

	        include "init.php";

                $inputJSON = file_get_contents('php://input');
                $input= json_decode( $inputJSON, TRUE );
		$userid=$input['userid'];
		$productid = $input['productid'];
		$rating_review = $input['rating_review'];
		$action = $input['action'];
		
		$sql = "INSERT INTO rating(userid,productid,rating_review,action)
				VALUES('$userid','$productid','$rating_review','$action');";
		$result = mysqli_query($connection,$sql);
		$res = "";
		if ($result) {
			$res = array(
				"status" => "success");
		}
		else{
			$res = array(
				"status" => "failed");
		}

		echo json_encode($res);
		
?>
		