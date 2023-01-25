<?php session_start();
require("handlers/db.php");
require("inc/header.php");

$_SESSION['hall_id']=$_GET['hallId'];

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
      
         

            <form action="handlers/insert-subhall.php" enctype="multipart/form-data" method="POST">
            <input type="hidden" id="hall_id" name="hall_id" value="<?= $_SESSION['hall_id']?>" >
                <div class="form-group">
                    <label for="name">Hall Name</label>
                   
                    <input type="text" name="name"class="form-control" id="name" placeholder="Enter Hall name" value= <?php if( isset($_SESSION['formhalldata']['name'])) echo $_SESSION['formhalldata']['name']?>>
                </div>
                <div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Type</label>
  </div>
  <select name ="type"class="custom-select" id="inputGroupSelect01">
    <option value="0">Choose...</option>
    <option value="1" <?php if( isset($_SESSION['formhalldata']['type']))if($_SESSION['formhalldata']['type']==1) echo "selected"?> value="1">Weddings</option>
    <option value="2" <?php if( isset($_SESSION['formhalldata']['type']))if($_SESSION['formhalldata']['type']==2) echo "selected" ?> value="2">Meetings</option>
    <option value="3" <?php if( isset($_SESSION['formhalldata']['type']))if($_SESSION['formhalldata']['type']==3) echo "selected" ?> value="3">Weddings and Meetings</option>
  
   
  </select>
</div>

                <div class="form-group">
                    <label for="name">Number of guests</label>
                    <input type="text" name="number_of_guests"class="form-control" id="name" placeholder="Enter Number of guests" value= <?php if( isset($_SESSION['formhalldata']['number_of_guests'])) echo $_SESSION['formhalldata']['number_of_guests']?>>
                </div>
                <div class="form-group">
                    <label for="name">Price</label>
                    <input type="text" name="price"class="form-control" id="name" placeholder="Enter price " value= <?php if( isset($_SESSION['formhalldata']['price'])) echo $_SESSION['formhalldata']['price']?>>
                </div>
               
                <div class="form-group">
                    <label for="name">Hall description</label>
                    <textarea  placeholder="Enter a Hall description"  class="form-control" name="hall_describtion" rows="3" id="comment" ><?php if( isset($_SESSION['formhalldata']['hall_describtion'])) echo $_SESSION['formhalldata']['hall_describtion']?></textarea>
                  </div>
                <div class="form-group">
                    <label for="name">Services</label>
                    <textarea class="form-control" placeholder="Enter Services" name="services"rows="4" id="comment" ><?php if( isset($_SESSION['formhalldata']['services'])) echo $_SESSION['formhalldata']['services']?></textarea>
                  </div>

                  <div class="form-group">
                    <label for="name">General Image 550x444</label>
                    <input type="file" name="image_view" class="form-control" placeholder="Enter image">

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