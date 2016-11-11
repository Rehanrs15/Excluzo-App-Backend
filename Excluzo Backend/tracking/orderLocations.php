<?php

	include "init.php";

	//query to get the ordered locations
	$query = "select location from orders";
	$result = mysqli_query($connection,$query);


	//array of locations
	$locationArray = array();
	if ($result) {
		while ($row = mysqli_fetch_assoc($result)) {
			array_push($locationArray,$row['location']);
                        //echo $row['location'];
		}
	}
	
	for($i = 0; $i < sizeof($locationArray); $i++){
            echo($locationArray[$i]);
        }
?>