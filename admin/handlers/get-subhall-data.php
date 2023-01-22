<?php
require("db.php");
$sql="SELECT id,name,type,number_of_guests,price,hall_describtion,services  FROM subhalls where id=$hallId";
$sqlResult=mysqli_query($conn,$sql);
$hallData=mysqli_fetch_assoc($sqlResult);


?>