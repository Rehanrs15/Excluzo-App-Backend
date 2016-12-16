<?php
	$username = "u859746321_rehan";
	$host = "mysql.hostinger.in";
	$password = "REHAN123@";
	$databaseName = "u859746321_exc";
	
	$connection = mysqli_connect($host,$username,$password,$databaseName);
	if(!$connection){
		//echo "Connection Error".mysqli_connect_error;
	}
	else{
		//echo "Connection Successfull";
	}
?>