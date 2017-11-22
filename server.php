<?php
$ser = "localhost";
$user = "root";
$pass = "";
$db = "dance_academy_cyprus";

// Create connection
$con = mysqli_connect($ser, $user, $pass, $db) or die ("Connection Failed");
echo "Connected successfully....";

	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$datebirth = $_POST['dob'];
	$usertel = $_POST['usertel'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$username = $_POST['username'];
	$password = $_POST['password'];

	$query="INSERT INTO student_table (student_username, student_password, 
		student_name, student_surname, student_birthday, student_address, 
		student_email, student_telephone) VALUES ('".$username."','".$password."','".$firstname."','".$lastname."','".$datebirth."','".$address."','".$email."','".$usertel."')";
	
	if(!mysqli_query($con, $query)){
		header("Location: http://127.0.0.1/Register2.html"); /* Redirect browser */
		exit();
	}
	else{
		header("Location: http://127.0.0.1/LogIn.html"); /* Redirect browser */
		exit();
	}
	
	mysqli_close($con);

?>
