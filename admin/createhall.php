<?php session_start();
require("handlers/db.php");
require("inc/header.php");




?>

    <main role="main" class="flex-shrink-0">
        <div class="container">
       
            <h1>Add hall</h1>
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
      
         

            <form action="handlers/insert-hall.php" enctype="multipart/form-data" method="POST">
            <input type="hidden" id="user_id" name="user_id" value="<?= $_SESSION['userId']?>" >
                <div class="form-group">
                    <label for="name">Hall Name</label>
                    <input type="text" name="name"class="form-control" id="name" placeholder="Enter Hall name" value= <?php if( isset($_SESSION['formhalldata']['name'])) echo $_SESSION['formhalldata']['name']?>>
                </div>

                <div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Type</label>
  </div>
  <select name ="type"class="custom-select" id="inputGroupSelect01">
    <option selected value="0">Choose...</option>
    <option value="1">Weddings</option>
    <option value="2">Meetings</option>
    <option value="3">Weddings&Meetings</option>
    
   
  </select>
</div>








                <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="inputGroupSelect01">City Name</label>
                </div>
                <select name ="city"class="custom-select" id="inputGroupSelect01">
                  <option value="0">Choose...</option>
                  <option value="1" <?php if( isset($_SESSION['formhalldata']['city']))if($_SESSION['formhalldata']['city']==1) echo "selected"?> value="1">Ramallah</option>
                  <option value="2" <?php if( isset($_SESSION['formhalldata']['city']))if($_SESSION['formhalldata']['city']==2) echo "selected" ?> value="2">Al-Bireh</option>
                  <option value="3" <?php if( isset($_SESSION['formhalldata']['city']))if($_SESSION['formhalldata']['city']==3) echo "selected" ?> value="3">Birzeit</option>
                
                
                </select>
              </div>






              
                <div class="form-group">
                    <label for="name">Address</label>
                    <input type="text" name="address"class="form-control" id="name" placeholder="Enter Address" value= <?php if( isset($_SESSION['formhalldata']['address'])) echo $_SESSION['formhalldata']['address']?>>
                </div>
        
          
               
                <div class="form-group">
                    <label for="name">Hall description</label>
                    <textarea  placeholder="Enter a Hall description"  class="form-control" name="hall_describtion" rows="3" id="comment" ><?php if( isset($_SESSION['formhalldata']['hall_describtion'])) echo $_SESSION['formhalldata']['hall_describtion']?></textarea>
                  </div>
          
                  <div class="form-group">
                    <label for="name">General Image</label>
                    <input type="file" name="image_view" class="form-control" placeholder="Enter image">

                  </div>

                      
                  <div class="form-group">
                    <label for="name">Video for the hall</label>
                    <input type="file" name="video_view" class="form-control" placeholder="Enter Video">

                  </div>
     
                  <div class="form-group">
                    <label for="name">Proof Of Ownership</label>
                    <input type="file" name="image" class="form-control" placeholder="Enter image">

                  </div>

                <button type="submit" class="btn btn-primary">Add Hall</button>
                <a  href="showhallowner.php" class="btn btn-primary">Back to hall list </a>
                <?php unset($_SESSION['formhalldata'])?>
            </form>
        </div>
    </main>

<?php
require("inc/footer.php");

?>