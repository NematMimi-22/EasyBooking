<?php

$hall_id=$_GET['hallId'];

$test= $hall_id;

$sql="SELECT h.id,h.name,h.type, h.number_of_guests,h.price,h.hall_describtion,h.services FROM subhalls h where h.hall_id ='$test'";

//here query that get data from sql
//sqlResult that going to database and put data in it
$sqlResult=mysqli_query($conn,$sql);
//to get data from sql, here just get the first data i can use fetch all to get all or use for loop with assoc
// we use sssoc when we return one coloumn
$hallData=mysqli_fetch_all($sqlResult);
?>