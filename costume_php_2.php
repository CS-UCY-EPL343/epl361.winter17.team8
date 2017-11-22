<?php
   $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = '';
   $db = 'dance_academy_cyprus';
   
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   
   $query = 'SELECT student_username, costume_id, 
      borrowed_date_of_borrowing, borrowed_date_of_return FROM borrowed_costume';
   $retval  = mysqli_query($conn, $query) or die("database error:". mysqli_error($conn));
   
   if(! $retval ) {
      die('Could not get data: ' . mysqli_error());
   }
   $myArr = [];
   while($row = mysqli_fetch_array($retval)) {

     $myArr[] = $row;
      echo "username :{$row['student_username']}  <br> ".
         "costume ID : {$row['costume_id']} <br> ".
         "date of borrow : {$row['borrowed_date_of_borrowing']} <br> ".
          "date of return : {$row['borrowed_date_of_return']} <br> ".
         "--------------------------------<br>";
   }


   $file = 'contact.txt';
   $out = array_values($myArr);
   $myJson = json_encode($out);
   file_put_contents($file,$myJson);
   

   echo $myJson;
    echo "Fetched data successfully\n";
   
   mysqli_close($conn);
?>