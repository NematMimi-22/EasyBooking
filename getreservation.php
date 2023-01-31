<?php
session_start();

require('admin/handlers/db.php'); 
$shallId = $_GET['shallId'];


  $query = "SELECT date as start,date as end, start_time, end_time, hall_id,status as status, concat('Event from ', start_time, ' to ', end_time) as title
  FROM reservations
  WHERE hall_id=$shallId and (status='approved' or status='pending')
  ORDER BY end_time;
  

  ";
  $result = mysqli_query($conn, $query);
  $reservationArrays=array();
  while($reservation=mysqli_fetch_assoc($result)){
if(mysqli_num_rows($result)>0){
    array_push($reservationArrays,$reservation);
}

  }
  echo json_encode($reservationArrays);
  ?>