<?php 
session_start();
$user_id= $_SESSION['userId']; 

require ('inc/head.php');
//(reservations.date > NOW() OR reservations.date = NOW()) 
require("admin/handlers/db.php");

$sql1="SELECT subhalls.name as hall_name, reservations.date, reservations.start_time, reservations.end_time ,reservations.hall_id,reservations.created_at,reservations.status,reservations.id
FROM reservations 
JOIN subhalls ON reservations.hall_id = subhalls.id 
WHERE reservations.user_id =$user_id 
ORDER BY reservations.date DESC;

";

$sqlResult=mysqli_query($conn,$sql1);

$feedbackData=mysqli_fetch_all($sqlResult);
$sql="SELECT subhalls.name as hall_name, reservations.date, reservations.start_time, reservations.end_time ,reservations.hall_id,reservations.created_at,reservations.status,reservations.id
FROM reservations 
JOIN subhalls ON reservations.hall_id = subhalls.id
WHERE   reservations.user_id =$user_id
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
    
      <div class="col col-5">Action</div>
    </li>
    <?php

if(isset($feedback)){
$current_date = date("Y-m-d");


foreach($feedbackData as $index=>$feedback){?>
    <li class="table-row">
      <div class="col col-1" data-label="Hallname"><a href="subhall-details.php?shallId=<?=$feedback[4];?>"><?=$feedback[0];?></a></div>
      <div class="col col-2" data-label="Date"><?=$feedback[1];?></div>
      <div class="col col-3" data-label="Staer_time"><?=$feedback[2];?></div>
      <div class="col col-4" data-label="End_time"><?=$feedback[3];?></div>
      <?php

      $olddate=$feedback[5];
      $afterTomorrow = date("Y-m-d", strtotime("+2 days", strtotime($olddate)));
     
      if ($current_date == $afterTomorrow) {
        if($feedback[6]=='pending'){
            $sql="UPDATE reservations set status='canceled' where id='$feedback[7]'";
            $query=mysqli_query($conn,$sql);
            
            
        } ?>

        <div class="col col-5 d-flex justify-content-center">
        
             
        <button  class="font-weight-bold btn btn-outline-Dark"  id="reason" >Reservation is canceled</button>
                                  
                          </div> 
                          <script>
    document.getElementById("reason").addEventListener("click", function(){
        alert("<?php echo "Reservation has been canceled since you didn't pay"; ?>");
    });
</script>
   

        <?php
        
          //echo "Today is the specific date.";
      } else {
        //echo "Today is not the specific date.";
        if($feedback[6]=='approved'){
          
          if($feedback[1]>=$current_date){
            ?> 

<?php if(isset($_POST['cancel'])){
        
        
        $sql="UPDATE reservations set status='canceled' where id='$feedback[7]'";
        $query=mysqli_query($conn,$sql);
        ?> 
        <div class="col col-5 d-flex justify-content-center">
             
             <i>CANCELED</i>
                                       
                               </div> 

        <?php
       
      
      
      } else { ?>

               <form action="" method="post">
               <div class="col col-5 d-flex justify-content-center">
             
               <button  class="font-weight-bold btn btn-outline-Dark" type="submit" name="cancel" id="cancel" >CANCEL</button>
                                         
                                 </div>
          </form>

           <?php }?>
          <?php }else{?>
          <div class="col col-5" data-label="Cancel">    
     
          <button  class="font-weight-bold btn btn-outline-Dark" onclick="window.location.href='FeedBack_subhall.php?shallId=<?= $feedback[4]; ?>';" >
               FeedBack
             </button>  
          </div>
          
           
         </li>
         <?php }
      }
    }
      
   

      

}
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














