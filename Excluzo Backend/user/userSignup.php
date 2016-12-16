<?php

	include "init.php";
	/*
		input consists of username,password,email,age,gender,mobilenumber in this order
	*/
        $inputJSON = file_get_contents('php://input');
        $input= json_decode( $inputJSON, TRUE );
	
        $userid = $input['userid'];	
        $username=$input['username'];
	$email = $input['email'];
        $pass = $input['password'];
	$age=$input['age'];
	$gender=$input['gender'];
	$mobilenumber=$input['mobile'];
	$address = $input['address'];

	$sql = "INSERT INTO user(userid,username,email,password,mobile,gender,age,address)
				VALUES('$userid','$username','$email','$pass','$mobilenumber','$gender','$age','$address');";
	$res = mysqli_query($connection,$sql)  or die(mysqli_error($connection));
 
        //echo $res;
        if($res){
                               $success = array(
						"status" => "success",
						"user" =>
								array("userid" => $userid,
								"username" => $username,
								"email" =>$email ,
								"password" => $pass,
								"mobile" => $mobilenumber,
								"gender" =>$gender ,
								"age" => $age,
								"address" => $address)
						);

                //mail to registered user
                $to = $email;
                $from = "From : noreply@excluzo.com" . "\r\n";
                $subject = "Registration Successful";
                $message = "Thank you for Registering with Excluzo.";
                mail($to,$subject,$message,$to);
		echo json_encode($success);
	}
	else{
			$fail = array("status" => "failed");
			echo json_encode($fail);
	}	
	
	mysqli_close($connection);
?>								