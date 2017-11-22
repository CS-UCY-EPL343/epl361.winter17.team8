<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'dance_academy_cyprus'); 

$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
    $username = $_POST['username'];
    $password = $_POST['password'];
 
    $query = "SELECT student_username, student_password FROM student_table WHERE (student_username = '" . $username . "' AND student_password = '" . $password . "')";
    $result  = mysqli_query($link, $query) or die("database error:". mysqli_error($link));
    $totalRows = mysqli_num_rows($result);

	if ($totalRows>0) {
		echo "ok";
	} 
	else {
		echo "username or password does not exist.";
 	}


?>