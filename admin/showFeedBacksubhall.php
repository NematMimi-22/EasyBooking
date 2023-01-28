<?php session_start();
require("handlers/db.php");
$hallId = $_GET['hallId'];
require("handlers/get-test.php");
$_SESSION['hall_id']=$hallId;


require("inc/header.php");
?>


<main role="main" class="flex-shrink-0 ">
  
        <div class="container">
    

        <br>
 


            <h1>List of FeedBack</h1>
            
            <br>

        <br>

        
            
            <table class="table table-bordered text-center justify-content-start">
                <thead  class="table-dark">
                    <tr>
                    <th>Sub hall name</th>
    <th>User name</th>
    <th>FeedBack</th>
 
  
  

         </tr>
                </thead>
                <tbody>

<?php

      $hallId=$_GET['hallId'];


       
       foreach($hallData as $inner_array) {
           foreach($inner_array as $element) {
             $sql="SELECT users.name as Uname, subhalls.name, feedback_subhall.feedback
             FROM feedback_subhall
             JOIN users ON feedback_subhall.user_id = users.id
             JOIN subhalls ON feedback_subhall.hall_id = subhalls.id
             WHERE subhalls.id =  $element ORDER BY feedback_subhall.id  DESC; 
             ";
       
             $query=mysqli_query($conn,$sql);
          //   $query2=mysqli_query($conn,$sql2);
             $halls1=mysqli_fetch_all($query,MYSQLI_ASSOC);
       
        
       ?>
        
         <?php    foreach($halls1 as $event ) {?>
       
       
               <tr>
               <td><?php echo $event['name']; ?></td>
               <td><?php echo $event['Uname']; ?></td>
              
               <td><?php echo $event['feedback']; ?></td>
             
         
             

           
             
            
           
               </tr>
           <?php }
       
       
    
             
           }
             
         ?>
      








      
 




 <?php
 




}
 

      ?>



























                </tbody>
            </table>
            <ul class="navbar-nav mr-auto">
               
       

           </ul>
           <button onclick="history.back()"  class="btn btn-dark">Back </button>

        </div>

    </main>


  <?php
require("inc/footer.php");

?>