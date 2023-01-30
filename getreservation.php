<?php
session_start();

require('admin/handlers/db.php'); 


  $query = "SELECT date as start,date as end, start_time, end_time, hall_id, concat('Booked', id) as title
  FROM reservations 
  
  
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