<?php
      session_start();
?>
<!DOCTYPE html>
<html lang="en">

<?php 
require ('inc/head.php'); 
require("admin/handlers/db.php"); 
require("admin/handlers/get_feedback.php");
$sql="SELECT * FROM feedbacks";
$query=mysqli_query($conn,$sql);
$users=mysqli_fetch_all($query,MYSQLI_ASSOC);
?>

<body>
    
 <?php require ('inc/preloader_area.php'); 

    require ('inc/top_Bar.php'); 

     ?>
         <?php
    

if(isset($_SESSION['userId'])){
$userid=$_SESSION['userId'];
require ('inc/LoginHeader.php'); 
}
else{
    require ('inc/Header.php'); 
}

?>
    
    <!-- ========== Breadcumb start============= -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center text-center">
                <div class="col-lg-8">
                    <h2 class="breadcrumb-title wow fadeInLeft" data-wow-duration="1.5s" data-wow-delay=".2s"
                        style="visibility: visible; animation-duration: 1.5s; animation-delay: 0.2s;">About Us</h2>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb d-flex justify-content-center">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">About Us</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Breadcumb end============= -->
    <!-- ========== Home1 About start============= -->
    <div class="home-one-about pt-120 pb-120">
        <img class="about-vector" src="assets/images/bg/h1-about-bg.png" alt="">
        <div class="container">
            <div class="row align-items-center pt-40 mb-40">
                <div class="col-lg-6">
                    <div class="about-content">
                        <div class="section-title1">
                            <span>The Easy Booking</span>
                            <h2>Find The Best Halls For Accomodation.</h2>
                        </div>
                        <p>Welcome to the best five-n New York. Hotel is veryes  elementum sesue the aucan vestibulum aliquam justo in sapien on thi rutrum volutpat. Donec in quis the pellentesque velit. Donec id velitel ac arcu posuere blane.</p>
                        <p>Hotel ut nisl quam nestibulum ac quam nec odio elementum oneni sceisuen the aucan ligula. Orci varius natoque penatibus ethemen magnis discustent parturient monte nascete ridiculus musclineorto nellentesque habitant forminy morbine.</p>
                        <div class="author-area d-flex align-items-center">
                            <div class="author-img">
                                <img class="img-fluid" src="assets/images/bg/manager.png" alt="">
                            </div>
                            <div class="author-details">
                                <h5>Website Manager</h5>
                                <img src="assets/images/bg/manager-name.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-img">
                        <img class="img-fluid" src="assets/images/bg/home-about-img.png" alt="">
                        <div class="reviews">
                            <h2>5.0</h2>
                            <ul class="stars d-flex align-items-center">
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                                <li><i class="bi bi-star-fill"></i></li>
                            </ul>
                            <span>2000, Reviews</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Home1 About end============= -->
    <!-- ========== Home Two Choose Start============= -->
    <div class="home-two-choose mb-120">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-6 order-lg-1 order-2">
                    <div class="choose-left">
                        <div class="row g-4">
                            <div class="col-md-6">
                                <div class="choose-img one">
                                    <img src="assets/images/bg/choose-1.png" alt="choose-img">
                                </div>
                                <div class="choose-img two">
                                    <img src="assets/images/bg/choose-2.png" alt="choose-img">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="choose-img three">
                                    <img src="assets/images/bg/choose-3.png" alt="choose-img">
                                </div>
                                <div class="choose-img four">
                                    <img src="assets/images/bg/choose-4.png" alt="choose-img">
                                </div>
                            </div>
                        </div>
                        <div class="tripadvisor-icon">
                            <img src="assets/images/icons/tripadvisor-icon.svg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 order-1 order-lg-2">
                    <div class="section-title2">
                        <span>Why Choose Us</span>
                        <h2>We Give The Best Halls Facilities.</h2>
                        <img src="assets/images/icons/section-bg.svg" alt="">
                        <p> ut nisl quam nestibulum ac quam nec odio elementum oneni sceisuen the aucan ligula. Orci varius natoque penatibus ethemen magnis discustent parturient monte nascete ridiculus musclineorto 
                            elementum oneni sceisuen the aucan ligula. Orci nellentesque habitant forminy morbine.</p>
                    </div>
                    <div class="choose-feature">
                        <ul>
                            <li><img src="assets/images/icons/check.svg" alt="check"> 24 hour Services</li>
                            <li><img src="assets/images/icons/check.svg" alt="check"> Swiming Pool</li>
                            <li><img src="assets/images/icons/check.svg" alt="check"> Free WiFi</li>
                            <li><img src="assets/images/icons/check.svg" alt="check"> Kid Gaming Zone</li>
                            <li><img src="assets/images/icons/check.svg" alt="check"> Locker Room</li>
                            <li><img src="assets/images/icons/check.svg" alt="check"> Halls cleaning</li>
                            <li><img src="assets/images/icons/check.svg" alt="check"> Safe & Secure</li>
                        </ul>
                        <a class="btn--primary3" href="hotel-facilities.php">Explore Feature</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Home Two Choose End============= -->
    <!-- ========== Home1 Feature start============= -->
    <div class="home-one-features mb-120">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class=" col-xl-6 px-0">
                    <div class="feature-content">
                        <div class="section-title1">
                            <span>Our Facilites</span>
                            <h2>Core Feature</h2>
                        </div>
                        <div class="row g-3 justify-content-center nav nav-tabs" id="pills-tab" role="tablist">
                             <div class="col-md-3 col-sm-4 col-6 nav-item" role="presentation">
                                    <button class="nav-link feature-items" id="pills-transport-tab" data-bs-toggle="tab" data-bs-target="#pills-transport"
                                        type="button" role="tab" aria-controls="pills-transport-tab" aria-selected="false">
                                
                                        <svg width="50" height="50" viewBox="0 0 50 50" xmlns="http://www.w3.org/2000/svg">
                                            <g clip-path="url(#clip0_2_10678)">
                                                <path
                                                    d="M14.2969 0.107399C13.7695 0.253883 13.0567 0.810524 12.7734 1.26951C12.4707 1.75779 12.3047 2.53904 12.3047 3.48631V4.08201L10.625 4.12107C9.02345 4.15037 8.90626 4.1699 8.34962 4.42381C7.57813 4.78513 6.82618 5.53709 6.48438 6.28904C6.23048 6.84568 6.20118 6.99216 6.17188 8.41795L6.13282 9.95115L3.51563 9.98045C1.04493 10.0097 0.878915 10.0195 0.615243 10.2148C-0.00975665 10.6738 8.96752e-06 10.5957 8.96752e-06 15.8691C8.96752e-06 21.1426 -0.00975665 21.0644 0.615243 21.5234C0.859384 21.709 1.03517 21.7285 2.19727 21.7285C3.35938 21.7285 3.53517 21.709 3.77931 21.5234C4.40431 21.0644 4.39454 21.123 4.39454 16.0351V11.4258H5.27345H6.15235V14.5508V17.6855L6.39649 17.9199C6.69923 18.2324 7.07032 18.2324 7.37306 17.9199L7.6172 17.6855V12.5781C7.6172 9.14061 7.65626 7.34373 7.72462 7.08006C7.8711 6.55271 8.61329 5.82029 9.1504 5.67381C9.4336 5.59568 13.916 5.56638 25.2246 5.58591L40.8984 5.61521L41.3184 5.90818C41.5527 6.0742 41.875 6.39646 42.041 6.63084L42.334 7.05076L42.3633 20.957L42.3828 34.8633H39.7949C37.0215 34.8633 36.7871 34.9023 36.3574 35.3613C36.1328 35.6152 34.4727 39.4043 34.4727 39.6777C34.4727 39.9707 34.707 40.3418 34.9707 40.4883C35.1953 40.5957 35.918 40.625 38.8184 40.625H42.3828V41.2695C42.3828 41.6308 42.3242 42.0996 42.2656 42.3242C42.1094 42.8515 41.3867 43.5742 40.8594 43.7304C40.3223 43.8867 9.71681 43.9062 9.1504 43.7402C8.63282 43.6035 7.86134 42.832 7.72462 42.334C7.66602 42.1191 7.6172 41.6504 7.6172 41.2793V40.625H11.2109C14.5899 40.625 14.8145 40.6152 15.1074 40.4297C15.6934 40.0781 15.6641 39.8144 14.6973 37.5781C14.2285 36.4844 13.75 35.4883 13.6426 35.3613C13.2129 34.9023 12.9785 34.8633 10.2051 34.8633H7.6172V27.7441C7.6172 20.6933 7.6172 20.625 7.41212 20.3711C7.13868 20.0195 6.63087 20.0195 6.35743 20.3808L6.15235 20.6347L6.17188 31.582L6.20118 42.5293L6.47462 43.1152C6.83595 43.8769 7.5879 44.6387 8.31056 44.9707L8.88673 45.2246V46.582C8.88673 47.9199 8.88673 47.9394 9.19923 48.5449C9.55079 49.2187 10.166 49.7168 10.8496 49.9023C11.1035 49.9707 12.3242 50 14.2383 49.9804C17.1192 49.9512 17.2559 49.9414 17.6367 49.7363C18.2031 49.4336 18.6426 48.9648 18.9063 48.3887C19.1113 47.959 19.1406 47.7539 19.1406 46.6015V45.3125H25H30.8594V46.6211C30.8594 47.9101 30.8692 47.9394 31.1817 48.5449C31.5234 49.2187 32.1387 49.7168 32.8223 49.9023C33.0762 49.9707 34.2969 50 36.2109 49.9804C39.0918 49.9512 39.2285 49.9414 39.6094 49.7363C40.1758 49.4336 40.6152 48.9648 40.8789 48.3887C41.084 47.9492 41.1133 47.7539 41.1133 46.5625V45.2246L41.6895 44.9707C42.4121 44.6387 43.1641 43.8769 43.5254 43.1152L43.7988 42.5293L43.8281 26.9726L43.8477 11.4258H44.7266H45.6055V16.0351C45.6055 21.123 45.5957 21.0644 46.2207 21.5234C46.4649 21.709 46.6406 21.7285 47.8027 21.7285C48.9649 21.7285 49.1406 21.709 49.3848 21.5234C50.0098 21.0644 50 21.1426 50 15.8691C50 10.5957 50.0098 10.6738 49.3848 10.2148C49.1211 10.0195 48.9551 10.0097 46.4844 9.98045L43.8672 9.95115L43.8281 8.41795C43.7988 6.93357 43.7891 6.86521 43.4961 6.24998C43.1055 5.43943 42.5 4.83396 41.6992 4.4531C41.0742 4.16013 41.0254 4.15037 39.3945 4.12107L37.7246 4.08201L37.666 3.06638C37.5781 1.57224 37.1875 0.839821 36.1914 0.312477L35.6934 0.0488052L25.1465 0.029274C18.9844 0.0195084 14.4727 0.0488052 14.2969 0.107399ZM35.5078 1.62107C35.9961 1.85545 36.1621 2.24607 36.2109 3.24216L36.25 4.10154H25H13.75L13.7891 3.24216C13.8379 2.25584 14.0039 1.85545 14.4727 1.63084C14.7656 1.48435 15.7715 1.46482 24.9805 1.46482C34.2188 1.46482 35.2051 1.48435 35.5078 1.62107ZM2.9297 15.8691V20.3125H2.19727H1.46485V15.8691V11.4258H2.19727H2.9297V15.8691ZM48.5352 15.8691V20.3125H47.8027H47.0703V15.8691V11.4258H47.8027H48.5352V15.8691ZM13.0371 37.4219C13.291 38.0273 13.5645 38.6719 13.6426 38.8379L13.7695 39.1601H10.6934H7.6172V37.7441V36.3281H10.0879H12.5684L13.0371 37.4219ZM42.3828 37.7441V39.1601H39.3066H36.2305L36.3574 38.8379C36.4356 38.6719 36.709 38.0273 36.9629 37.4219L37.4316 36.3281H39.9121H42.3828V37.7441ZM17.6758 46.5332V47.7539L17.3438 48.125L17.0117 48.4863H14.0137H11.0156L10.6836 48.125L10.3516 47.7539V46.5332V45.3125H14.0137H17.6758V46.5332ZM39.6484 46.5332V47.7539L39.3164 48.125L38.9844 48.4863H35.9863H32.9883L32.6563 48.125L32.3242 47.7539V46.5332V45.3125H35.9863H39.6484V46.5332Z" />
                                                <path
                                                    d="M12.6171 7.22656C12.1582 7.65625 12.4707 8.49609 13.0859 8.49609C13.457 8.49609 13.7695 8.16406 13.7695 7.76367C13.7695 7.36328 13.457 7.03125 13.0859 7.03125C12.9492 7.03125 12.7343 7.11914 12.6171 7.22656Z" />
                                                <path
                                                    d="M16.7578 7.23633C16.5723 7.38281 16.5039 7.5293 16.5039 7.76367C16.5039 7.99805 16.5723 8.14453 16.7578 8.29102C17.0215 8.49609 17.0703 8.49609 25 8.49609C32.9297 8.49609 32.9785 8.49609 33.2422 8.29102C33.5938 8.01758 33.5938 7.50977 33.2422 7.23633C32.9785 7.03125 32.9297 7.03125 25 7.03125C17.0703 7.03125 17.0215 7.03125 16.7578 7.23633Z" />
                                                <path
                                                    d="M36.4453 7.22654C36.1523 7.49997 36.1523 8.02732 36.4453 8.30076C36.9043 8.72068 37.5977 8.39841 37.5977 7.76365C37.5977 7.36326 37.2852 7.03122 36.9141 7.03122C36.7773 7.03122 36.5625 7.11911 36.4453 7.22654Z" />
                                                <path
                                                    d="M10.0586 10.1465C9.87305 10.2441 9.58984 10.4883 9.42383 10.6836L9.13086 11.0547L9.10156 19.5117C9.0918 24.1699 9.10156 28.125 9.13086 28.3008C9.19922 28.6914 9.70703 29.2871 10.127 29.4531C10.3906 29.5703 12.998 29.5898 25.0195 29.5898C39.0332 29.5898 39.6191 29.5801 39.9414 29.4043C40.127 29.3066 40.4102 29.0625 40.5762 28.8672L40.8691 28.4961V19.7754V11.0547L40.5762 10.6836C40.4102 10.4883 40.127 10.2441 39.9414 10.1465C39.6191 9.9707 39.0332 9.96094 25 9.96094C10.9668 9.96094 10.3809 9.9707 10.0586 10.1465ZM39.4043 19.7754V28.0762H25H10.5957L10.5664 19.873C10.5566 15.3613 10.5664 11.6113 10.5957 11.543C10.625 11.4453 13.5645 11.4258 25.0195 11.4453L39.4043 11.4746V19.7754Z" />
                                                <path
                                                    d="M16.5919 32.7441C16.1817 33.0176 15.8985 33.5449 15.9571 33.9355C15.9962 34.2285 18.3692 39.707 18.6232 40.1074C18.9649 40.625 18.9649 40.625 25.0001 40.625C31.0353 40.625 31.0353 40.625 31.3771 40.1074C31.631 39.707 34.004 34.2285 34.0431 33.9355C34.1017 33.5449 33.8185 33.0176 33.4083 32.7441C33.0958 32.5293 32.9884 32.5195 31.2306 32.5195C29.4044 32.5195 29.3849 32.5195 29.1505 32.7637C28.8575 33.0469 28.838 33.3887 29.0919 33.7012C29.2677 33.9258 29.3458 33.9355 30.879 33.9844L32.4903 34.0332L31.3575 36.5918L30.2345 39.1602H25.0001H19.7755L18.6427 36.5918L17.5099 34.0332L22.0411 33.9844L26.5821 33.9355L26.7677 33.7012C27.0216 33.3887 27.0021 33.0469 26.7091 32.7637L26.4747 32.5195H21.6993H16.9239L16.5919 32.7441Z" />
                                                <path
                                                    d="M21.1523 36.0449C20.9668 36.1914 20.8984 36.3379 20.8984 36.5723C20.8984 36.8066 20.9668 36.9531 21.1523 37.0996C21.4062 37.2949 21.5234 37.3047 25 37.3047C28.4766 37.3047 28.5938 37.2949 28.8477 37.0996C29.0332 36.9531 29.1016 36.8066 29.1016 36.5723C29.1016 36.3379 29.0332 36.1914 28.8477 36.0449C28.5938 35.8496 28.4766 35.8398 25 35.8398C21.5234 35.8398 21.4062 35.8496 21.1523 36.0449Z" />
                                            </g>
                                        </svg>
                                        Transport
                                    </button>
                            </div>
                        </div>

                    </div>
                </div>
                <div class=" col-xl-6 px-0">
                    <div class="tab-content" id="pills-tabContent">
                       <div class="tab-pane fade" id="pills-transport" role="tabpanel" aria-labelledby="pills-transport-tab">
                            <div class="swiper feature-slider">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img class="img-fluid" src="assets/images/bg/Transport001.png" alt=""></div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Home1 Feature end============= -->
   


   
    <!-- ========== Home1 Testimonial Start============= -->
    <div class="home-one-testimonial mb-120">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title1 text-center">
                        <span>Testimonial</span>
                        <h2>What Our Guest Say</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="swiper testimonial-slider-1">
                    <div class="swiper-wrapper">
                    <?php

if(isset($users)){


    //here we go to delete page and نمرر parameter 
    //strtotime convert string to time 
//index is a proparities for foreach that give me a chance to give a correct id
//ican sent more than one parametrers by &
 /*sent data in get way in search*/

foreach($feedbackData as $index=>$users){?>


                        <div class="swiper-slide">
                            <div class="testimonial-wrrap">
                                <img src="assets/images/icons/left-quote.svg" alt="">
                                <div class="content">
                                    <p><?=$users[1];?> </p>
                                </div>
                 
                            </div>
                        </div>
                        <?php }

}?>
                    </div>
                </div>

                
            </div>
            <div class="row align-items-center pt-80">
                <div class="col-lg-4">
                    <div class="swiper-btn-left">
                       <div class="btns swiper-button-prev-e">
                        <svg width="26" height="13" viewBox="0 0 26 13" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M7.26821 12.5247C7.57342 12.4319 7.74572 12.1194 7.66696 11.807C7.64727 11.7142 6.82514 10.8695 5.21536 9.26803L2.79823 6.86094L14.1996 6.85117L25.6059 6.83652L25.7437 6.73399C25.8176 6.68028 25.916 6.54357 25.9554 6.43127C26.0194 6.25062 26.0145 6.21156 25.9407 6.0602C25.8964 5.96743 25.7979 5.85025 25.7241 5.80143C25.5961 5.71842 25.0693 5.71354 14.1947 5.69889L2.79823 5.68913L5.19075 3.30645C6.51008 1.99793 7.6128 0.865182 7.63742 0.791944C7.76049 0.474579 7.63742 0.176744 7.3322 0.0497979C6.9876 -0.0917957 7.05652 -0.150386 3.8468 3.03791C1.82843 5.03976 0.843853 6.05044 0.824161 6.14321C0.80447 6.21645 0.80447 6.33363 0.824161 6.41175C0.843853 6.49964 1.8235 7.50544 3.81727 9.49263C6.34763 12.0071 6.9876 12.6077 7.11067 12.5686C7.12052 12.5686 7.18944 12.5442 7.26821 12.5247Z" />
                        </svg>
                       </div>
                    </div>
                </div>
                <div class="col-lg-4 d-flex justify-content-center">
                    <div class="contents">
                        <p>We are always keep them happy</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="swiper-btn-right">
                        <div class="btns swiper-button-next-e">
                            <svg width="26" height="14" viewBox="0 0 26 14" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M19.0947 0.759911C18.7901 0.852686 18.6181 1.16519 18.6967 1.47769C18.7164 1.57046 19.5369 2.4152 21.1437 4.01677L23.5562 6.42402L12.1765 6.43379L0.791783 6.44844L0.654204 6.55098C0.580501 6.60469 0.48223 6.74141 0.442921 6.85372C0.379045 7.03438 0.383959 7.07344 0.457662 7.22481C0.501884 7.31759 0.600155 7.43477 0.673858 7.4836C0.80161 7.56661 1.32736 7.57149 12.1814 7.58614L23.5562 7.59591L21.1682 9.97874C19.8514 11.2873 18.7508 12.4202 18.7262 12.4934C18.6034 12.8108 18.7262 13.1086 19.0309 13.2356C19.3748 13.3772 19.306 13.4358 22.5096 10.2473C24.5242 8.24532 25.5069 7.23457 25.5266 7.1418C25.5462 7.06856 25.5462 6.95137 25.5266 6.87324C25.5069 6.78535 24.5291 5.77948 22.5391 3.79216C20.0136 1.27749 19.3748 0.676902 19.252 0.715965C19.2421 0.715965 19.1733 0.74038 19.0947 0.759911Z" />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Home1 Testimonial end============= -->




    <!-- ========== Home1 Blog Start============= -->
    <div class="home-one-blog mb-120">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title1 text-center">
                        <span>Blog Post</span>
                        <h2>Our Update Article.</h2>
                    </div>
                </div>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-wrrap">
                        <div class="blog-img">
                            <img src="assets/images/blog/blog1.png" alt="">
                            <div class="batch">
                                <a href="blog.php">June 21, 2022</a>
                            </div>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="blog.php">By, Admin -</a> <a href="blog.php">Hotel</a>
                            </div>
                            <div class="blog-title">
                                <h4><a href="blog-details.php">veryes  elementum sesuren then aucan vestibu.</a></h4>
                            </div>
                            <div class="read-more-btn">
                                <a href="blog-details.php">
                                    <svg width="43" height="10" viewBox="0 0 43 10" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M1 5H41" stroke-width="1.5" stroke-linecap="round" />
                                        <path d="M36 9L41 5L36 1" stroke-width="1.5" stroke-linecap="round" />
                                    </svg>
                                     Read More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ========== Home1 Blog End============= -->     
    
    <?php require ('inc/footer.php'); 

     require('inc/js_file_link.php'); ?>

</body>

</html>