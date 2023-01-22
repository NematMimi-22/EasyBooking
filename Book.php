
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="initial-scale=1.0">
    <script src="assets/js/fg.timepicker.js"></script>
    <link type="text/css" rel="stylesheet"  href="assets/css/fg.timepicker.css" />
</head>

<?php session_start();
require ('inc/head.php'); ?>

<body>
    <?php require ('inc/preloader_area.php'); 

    require ('inc/top_Bar.php'); 

    

    if(isset($_SESSION['userId'])){
    $userid=$_SESSION['userId'];
   
    require ('inc/LoginHeader.php'); 
    }else{
    
         require ('inc/Header.php'); 
    }
    
  
    
    $shallId=$_GET['shallId'];
    require('admin/handlers/db.php');
    $sql= "SELECT * FROM images where subhall_id=$shallId";
    $query = mysqli_query($conn,$sql);

    $sql="SELECT * FROM subhalls where id=$shallId";
    $sqlResult=mysqli_query($conn,$sql);
    $hallData=mysqli_fetch_assoc($sqlResult);

   $hallid= $hallData['hall_id'];
   $sql="SELECT * FROM halls where id=$hallid";
   $sqlResult=mysqli_query($conn,$sql);
   $hall=mysqli_fetch_assoc($sqlResult);
    
    ?>
    <!-- ========== Breadcumb start============= -->
  
    

    <div class="breadcrumb-section">
        
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center text-center">
                <div class="col-lg-8">
                <div class="hero-video">
                    
                    <h2 class="breadcrumb-title wow fadeInLeft" data-wow-duration="1.5s" data-wow-delay=".2s">Booking A Hall</h2>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb d-flex justify-content-center">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Book</li>
                            
                        </ol>
                    </nav>
                </div>
            </div>
            </div>
        </div>
    </div>
    <!-- ========== Breadcumb end============= -->
    <!-- ========== Room & Suits start============= -->
    <div class="room-suits-details-page pt-120 mb-120">
        <div class="container">
            <div class="row mb-80 g-8">
             
                <div class="col-lg-5">
                <div class="widget-area2">
                <?php if(isset( $_SESSION['errors'])){
            foreach($_SESSION['errors'] as $error){?>
  <div class="alert alert-danger" role="alert"> <?php echo $error;?> </div>  

    <?php        }
            unset($_SESSION['errors']);
          }
          if(isset( $_SESSION['success'])){?>
         <div class="alert alert-success" role="alert"> <?php echo  $_SESSION['success'];?> </div>  
        <?php   unset($_SESSION['success']);
        }
          
          ?>
                        <div class="widget-title">
                            <h5>Book <?php echo $hall['name'];?> - <?php echo $hallData['name'];?></h5>
                        </div>
                        <div class="single-widgets booking-widgets">
                           
                        <form action="admin/handlers/insert-reservation.php" enctype="multipart/form-data" method="POST">

                        
                                <div class="wp-block-text__inside-wrapper select-items">
                               
                                <select name ="event_type" class="custom-select" id="inputGroupSelect01" >
                                    <option selected value="1">choose event type</option>
                                    <?php if($hallData['type']!="meetings" ) { ?>
                                    <option value="2">Wedding</option>
                                    <option value="3">Party</option>
                                    <option value="4">Consolation</option>
                                    <?php } if($hallData['type']=="weddings&meetings" or $hallData['type']=="meetings"){?>
                                    <option value="5">Meeting</option> <?php } ?>
                                </select>
                                 </div>

                                <div class="wp-block-text__inside-wrapper ">
                                <i class='bx bx-user'></i>
                                <input type="text" name="number_guest" placeholder="Number of Guests">
                                <input type="hidden"  name="shallId" value="<?= $hallData['id'];?>" >
                                </div>

                            
                           
                                <div class="cwp-block-text__inside-wrapper">
                                    <div class="searchbox-input date-picker-input input__list">
                                        <input autocomplete="off" placeholder="Pick A Date" type="text" name="date" id="datepicker16" value="" class="claender">
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-xl-6">
                                    <div class="example" id="e2_std_input">


                                    <div  class="wp-block-text__inside-wrapper ">
            
                                    <input type="text" id="e2_input" name="start_time" placeholder="Starting Time">
                                    </div>
                                    <script>
                                    let e2TP = new fg.Timepicker({
                                    bindInput: document.getElementById('e2_input'),
                                    animatePopup: true});
                                    </script>
                                    </div>
                                        
                                    </div>

                                    <div class="col-xl-6"">
                                    <div class="example" id="e3_std_input">


                                    <div  class="wp-block-text__inside-wrapper ">
            
                                    <input type="text" id="e3_input"  name="end_time" placeholder="Ending Time">
                                    </div>
                                    <script>
                                    let e3TP = new fg.Timepicker({
                                    bindInput: document.getElementById('e3_input'),
                                    animatePopup: true});
                                    </script>
                                    </div>
                                        
                                    </div>

                            
                                </div>



                            <div class="wp-block-text__inside-wrapper ">
                                <textarea name="notes" placeholder="Note (If Any)"></textarea>
                            </div>
                            <div class="wp-block-text__inside-wrapper submit-btn">
                                <button type="submit">Book Now</button>
                            </div> 
                        </form>
                        </div>
                   
                    </div>
     
                </div>
                <div class="col-lg-7">
                    
                <div class="swiper room-details-slider mb-30">
                        <div class="swiper-wrapper">
                            
                                <?php   
                                if($query->num_rows>0){
                                while($row=mysqli_fetch_array($query)){
                                
                                ?>
                                <div class="swiper-slide">
                                    <div class="rooms-imeges">
                                    <img class="img-fluid" src="admin/HallsImages/<?php echo $row["image"]; ?>" alt="">
                                    </div>
                                </div>
                                    <?php
                                }
                                }else{?>
                                
                                <p>No image(s) found...</p>
                                <?php
                                }
                                ?> 
                               
                           
                        </div>
                        <div class="swiper-btns d-flex align-items-center justify-content-between">
                            <div class="swiper-button-prev-m"><i class="bi bi-chevron-left"></i></div>
                            <div class="swiper-button-next-m"><i class="bi bi-chevron-right"></i></div>
                        </div>
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