<?php 
define("SERVERNAME","localhost");
define("USERSERV","easy-booking");
define("PASSSERV","#&Qkd0jg6jdsnb12");
define("DBNAME","easybooking");
$conn=mysqli_connect(SERVERNAME,USERSERV,PASSSERV,DBNAME);

// if($conn){
//     echo "Connect";
// }else {
//   die("error ".mysqli_connect_error($conn));
// }
?>