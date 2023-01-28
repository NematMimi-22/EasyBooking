<?php
session_start();
$user_id= $_SESSION['userId']; 

require ('inc/head.php');
require("admin/handlers/db.php");
$sql1="SELECT  subhalls.name as hall_name, reservations.date, reservations.start_time, reservations.end_time
FROM reservations
JOIN subhalls ON reservations.hall_id = subhalls.id
";

$sqlResult=mysqli_query($conn,$sql1);

$feedbackData=mysqli_fetch_all($sqlResult);

$sql="SELECT  subhalls.name as hall_name, reservations.date, reservations.start_time, reservations.end_time
FROM reservations
JOIN subhalls ON reservations.hall_id = subhalls.id
WHERE reservations.user_id =$user_id ";
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <br>
                        <br>
                        <br>
                

                        <h1>My Reservations</h1>
                        <br>
    <table>
      <tr>
     
        <th>Hall Name</th>
        <th>Reservation Date</th>
        <th>Start Time</th>
        <th>End Time</th>
      </tr>
      
 
<?php

if(isset($feedback)){



foreach($feedbackData as $index=>$feedback){?>


    <tr>
    <td><?=$feedback[0];?></td>
    <td><?=$feedback[1];?></td>
    <td><?=$feedback[2];?></td>
    <td><?=$feedback[3];?></td>
 
    </tr>
<?php }



}
else{?>
  <tr>
    <td colspan="6" class="text-center">No Feedback Added</td>
  </tr>
  <?php
} ?>
    
    </table>
                    </div>
    
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Room & Suits end============= -->
    <?php require ('inc/footer.php'); 

    require('inc/js_file_link.php'); ?>
</body>

</html>














