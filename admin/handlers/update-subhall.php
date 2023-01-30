

<?php  session_start();
require("db.php");
$hallId=$_POST['hallId'];

$mainhallid=$_SESSION['hall_id'];
//echo $mainhallid;

$sql="SELECT * FROM subhalls where id=$hallId";
$query = mysqli_query($conn,$sql);
if(mysqli_num_rows($query)>0){


    $name=strip_tags(trim($_POST['name']));
    $type=strip_tags(trim($_POST['type']));

    $number_of_guests=strip_tags(trim($_POST['number_of_guests']));
    $services=strip_tags(trim($_POST['services']));
    $hall_describtion=strip_tags(trim($_POST['hall_describtion']));
    $price=strip_tags(trim($_POST['price']));
   
$errors=[];


if(empty($name)){
    $errors[]="Name is required";
    }elseif(is_numeric($name)){
    
    $errors[]="Name must not contain numbers";
    }elseif(strlen($name)<= 2 || strlen($name)>30 ){
        $errors[]="name must be more that 2 letters and less than 30";
    
    }

    if(empty($number_of_guests)){
            $errors[]="Number of guests is required";
            }elseif(!is_numeric($number_of_guests)){
        
            $errors[]="Number of guests must be a number";
            }
            if(empty($price)){
                $errors[]="price is required";
                }elseif(!is_numeric($price)){
            
                $errors[]="price must be a number";
                }
    
     
    
                if(empty($hall_describtion)){
                    $errors[]="Hall describtion are required";
                    }elseif(strlen($hall_describtion)<= 20 || strlen($hall_describtion)>500 ){
                        $errors[]="Hall describtion must be more that 20 letters and less than 100";
                    
                    }    
                    if(empty($services)){
                        $errors[]="Services are required";
                        }elseif(strlen($services)<= 20 || strlen($services)>500 ){
                            $errors[]="Hall describtion must be more that 20 letters and less than 100";
                        
                        }
              



$sql="SELECT id,name,type,  number_of_guests,price,hall_describtion,services FROM subhalls";



        if (empty($errors)){
$sql="UPDATE subhalls SET
name='$name',
type='$type',
number_of_guests='$number_of_guests',
price='$price',
hall_describtion='$hall_describtion',
services='$services'
WHERE id=$hallId";
if(mysqli_query($conn,$sql)){

$_SESSION['success1']="Hall updated succefully";
$test=   $_SESSION['usertype'];

if ($test=='owner'){
  header("Refresh:0;URL=../showsubhalls.php?hallId=$mainhallid");
}else{
   header("Refresh:0;URL=../showsubhalls.php?hallId=$mainhallid");
}

}
        }else {
            $_SESSION['errors1']=$errors;
    header("Refresh:0;URL=../edit-subhall.php?hallId=$hallId");
           
           
        }    
                       }else{

 $_SESSION['errors']="no data found";
 

                       }  
?>