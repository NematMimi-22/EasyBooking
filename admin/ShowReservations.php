<?php ob_start();
session_start();
require("handlers/db.php");
require("handlers/get-reservation.php");
$sql="SELECT * FROM reservations";
$query=mysqli_query($conn,$sql);
if(mysqli_num_rows($query)>0){
$reservation=mysqli_fetch_all($query,MYSQLI_ASSOC);
$flag=false;

}
require("inc/header.php");
?>

 
<main role="main" class="flex-shrink-0 ">
        <div class="container">
        <br>
            <h1>List of Reservations</h1>
            <br>

        <br>

       
            
            <table class="table table-bordered text-center justify-content-start">
                <thead  class="table-dark">
                    <tr>
                    <th scope="col">#</th>
                    <th scope="col">Hall id</th>
                    <th scope="col">Event Type</th>  
                    <th scope="col">Number of guests</th>        
                    <th scope="col">Date</th>
                    <th scope="col">Starting Time</th>
                    <th scope="col">Ending Time</th>
                    <th scope="col">Notes</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                   
                 
                    
                    </tr>
                </thead>
                <tbody>

<?php

if(isset($reservation)){



foreach($reservationData as $index=>$reservation){?>


    <tr>
    <td><?=$index+1;?></td>
    <td><?=$reservation[0];?></td>
    <td><?=$reservation[1];?></td>
    <td><?=$reservation[2];?></td>
    <td><?=$reservation[3];?></td>
    <td><?=$reservation[4];?></td>
    <td><?=$reservation[5];?></td>
    <td><?=$reservation[6];?></td>
    <td><?=$reservation[7];?></td>
    <?php if($reservation[7]== 'pending'){?>
      
      <?php $flag=true; } ?>
    
    <form action="ShowReservations.php" method='post'>
      
    <input type='hidden' name='id' value='<?php echo $reservation[9]?>'>
    <?php if($flag==true){?>
    <td><input  type='submit' name='approve' value='Accept' class="btn btn-success">
    <input type='submit' name='decline' value='Decline' class="btn btn-danger"></td>
<?php } ?>
  </form>


    </tr>
<?php }



}
else{?>
  <tr>
    <td colspan="6" class="text-center">No Reservation Added</td>
  </tr>
  <?php
} ?>
               
        </tbody>
    </table>

                
<?php if(isset($_POST['approve'])){

    $id = $_POST['id'];
    $sql="UPDATE reservations set status='approved' where id='$id'";
    $query=mysqli_query($conn,$sql);
    header("Refresh:0");
  
}

if(isset($_POST['decline'])){

  $id = $_POST['id'];
  $sql="UPDATE reservations set status='canceled' where id='$id'";
  $query=mysqli_query($conn,$sql);
  header("Refresh:0");


}



?>
            <ul class="navbar-nav mr-auto">
               
       

           </ul>
        </div>

    </main>


  <?php 
require("inc/footer.php");
ob_end_flush();
?>