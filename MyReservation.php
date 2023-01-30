<?php
session_start();
$user_id= $_SESSION['userId']; 

require ('inc/head.php');
//(reservations.date > NOW() OR reservations.date = NOW()) 
require("admin/handlers/db.php");

$sql1="SELECT subhalls.name as hall_name, reservations.date, reservations.start_time, reservations.end_time 
FROM reservations 
JOIN subhalls ON reservations.hall_id = subhalls.id 
WHERE reservations.user_id =$user_id and  reservations.status='approved'
ORDER BY reservations.date DESC;

";

$sqlResult=mysqli_query($conn,$sql1);

$feedbackData=mysqli_fetch_all($sqlResult);
$sql="SELECT subhalls.name as hall_name, reservations.date, reservations.start_time, reservations.end_time 
FROM reservations 
JOIN subhalls ON reservations.hall_id = subhalls.id
WHERE  reservations.status='approved' and  reservations.user_id =$user_id
ORDER BY reservations.date DESC

 ";
$query=mysqli_query($conn,$sql);
if(mysqli_num_rows($query)>0){
$feedback=mysqli_fetch_all($query,MYSQLI_ASSOC);

}


?>

<!DOCTYPE html>
<html lang="en">



<body>
    <?php require ('inc/preloader_area.php'); 

    require ('inc/top_Bar.php'); 

 ?>
     <?php

if(isset($_SESSION['userId'])){
$userid=$_SESSION['userId'];

require ('inc/LoginHeader.php'); 
}else{

     require ('inc/Header.php'); 
}

?>
    <!-- ========== Breadcumb start============= -->
    <div class="breadcrumb-section">

        <div class="container">
            <div class="row d-flex justify-content-center align-items-center text-center">
                <div class="col-lg-8">
                    <h2 class="breadcrumb-title wow fadeInLeft" data-wow-duration="1.5s" data-wow-delay=".2s">My Reservations</h2>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb d-flex justify-content-center">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">My Reservations</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Breadcumb end============= -->


    <!-- ========== Room & Suits start============= -->
    <div class="contact-page mb-120  overflow-hidden">
        <div class="container-fluid px-0">
     
        </div>
   
                <div class="container">
                    <br>
                    <br>
  <h2>My Reservations</h2>
  <br>
  <br>
  <ul class="responsive-table">
    <li class="table-header">
      <div class="col col-1">Hall Name</div>
  
      <div class="col col-2">Reservation Date</div>
      <div class="col col-3">Start Time</div>
      <div class="col col-4">End Time</div>
    
      <div class="col col-5">Cancel Book</div>
    </li>
    <?php

if(isset($feedback)){
$current_date = date("Y-m-d");


foreach($feedbackData as $index=>$feedback){?>
    <li class="table-row">
      <div class="col col-1" data-label="Hallname"><?=$feedback[0];?></div>
      <div class="col col-2" data-label="Date"><?=$feedback[1];?></div>
      <div class="col col-3" data-label="Staer_time"><?=$feedback[2];?></div>
      <div class="col col-4" data-label="End_time"><?=$feedback[3];?></div>
      <?php
      if($feedback[1]>=$current_date){
       ?> 
          <div class="col col-5 d-flex justify-content-center">
        
          <button  class="font-weight-bold btn btn-outline-Dark" type="submit" >CANCEL</button>
                                    
                            </div>
     <?php }else?>
     <div class="col col-5" data-label="Cancel">    </div>
     
      
    </li>
    <?php }
?>  </ul>
<?php
}
else{?>
  <tr>
  <div class="col col-5" data-label="Cancel">            No Reservations</div>
   
  </tr>
  <?php
} ?>
</div>
    
                </div>










    <!-- ========== Room & Suits end============= -->
    <?php require ('inc/footer.php'); 

    require('inc/js_file_link.php'); ?>
</body>

</html>














