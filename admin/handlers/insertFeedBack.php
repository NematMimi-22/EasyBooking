<?php 
//connect to database
session_start();
require("db.php");

$FeedBack=$_POST['FeedBack'];
$user_id=$_POST['user_id'];
$errors=[];

if(empty($FeedBack)){
    $errors[]="empty";    
    }

    if (empty($errors)){

$sql="INSERT INTO feedbacks(FeedBack,user_id) 
VALUES ('$FeedBack','$user_id')";
$sqlResult=mysqli_query($conn,$sql);
header("Refresh:0;URL=../../Feedbackthanks.php");
    }else{

        header("Refresh:0;URL=../../FeedBack.php");
    }
?>
