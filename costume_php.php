<?php
$ser = "localhost";
$user = "root";
$pass = "";
$db = "dance_academy_cyprus";

// Create connection
$con = mysqli_connect($ser, $user, $pass, $db) or die ("Connection Failed");
echo "Connected successfully....";

	$dateofborrow = $_POST['dateofborrow'];
	$dateofreturn = $_POST['dateofreturn'];
	$username = $_POST['username'];
	$costumeID = $_POST['costumeID'];

	$query="INSERT INTO borrowed_costume (student_username, costume_id, 
		borrowed_date_of_borrowing, borrowed_date_of_return) VALUES ('".$username."','".$costumeID."','".$dateofborrow."','".$dateofreturn."')";
	
	if(!mysqli_query($con, $query)){
		header("Location: http://127.0.0.1/costume-borrow.html"); /* Redirect browser */
		exit();
	}
	else{
		header("Location: http://127.0.0.1/costume-borrow.html"); /* Redirect browser */
		exit();
	}
	
	mysqli_close($con);

?>
