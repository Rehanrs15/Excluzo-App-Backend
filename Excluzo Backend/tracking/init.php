<?php
	$username = "u540736305_user1";
	$host = "mysql.hostinger.in";
	$password = "REHAN123@";
	$databaseName = "u540736305_exclz";
	
	$connection = mysqli_connect($host,$username,$password,$databaseName);
	if(!$connection){
		//echo "Connection Error" . mysqli_connect_error();
	}
	else{
		//echo "Connection Successfull";
	}
?>