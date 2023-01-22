<?php session_start();

$shallId=$_GET['shallId'];
$_SESSION['shallId']= $shallId;
$_SESSION['fb_sb_login']= false;

if(!isset($_SESSION['userId'])){
    header("location: ../../login1.php");
    $_SESSION['fb_sb_login']= true;  
  }

else{
    header("location: ../../FeedBack_subhall.php?shallId=$shallId ");
}





?>