<?php

	include "init.php";
        $inputJSON = file_get_contents('php://input');
        $input= json_decode( $inputJSON, TRUE );
		$email = $input['email'];
        $pass = $input['password'];

	$sql = "select userid,username,password,email,mobile,gender,age,address from user where email='$email' and password='$pass';";
	$result = mysqli_query($connection,$sql);
	$num_rows = mysqli_num_rows($result);
	
	
	$fail = array("status" => "failed");
	if($num_rows > 0){
		$row = mysqli_fetch_assoc($result);
		$success = array(
						"status" => "success",
						"user" =>
								array("userid" => $row["userid"],
								"username" => $row["username"],
								"password" =>$row["password"],
								"email" => $row["email"],
								"mobile" => $row["mobile"],
								"gender" => $row["gender"],
								"age" => $row["age"],
								"address" => $row["address"]));
		echo json_encode($success);
	}
	else{
		echo json_encode($fail);
	}
	
	mysqli_close($connection);
?>			