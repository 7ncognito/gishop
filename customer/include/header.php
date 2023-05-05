<?php 
session_start();
include_once('include/dbcon.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShopGi.in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link href="css/bootstrap.css.map" rel="stylesheet" >
    <link href="css/all.min.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
    }
  </script>
  <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

</head>
<body>
  
   <header>
      <?php 
      $cust_id = $_SESSION['id'];
$query = "SELECT * FROM cart WHERE cust_id=$cust_id";
$run = mysqli_query($con, $query);

$count = mysqli_num_rows($run);

$customer_id = $_SESSION['id'];
$order_query = "SELECT * FROM customer_order WHERE customer_id=$customer_id AND order_status IN ('verified', 'delivered')";
$run = mysqli_query($con, $order_query);

$order_count = mysqli_num_rows($run);
?>
      <?php  
       if(isset($_SESSION['email'])){
        $cust_id =  $_SESSION['id'];
        $query = "SELECT * FROM cart Where cust_id=$cust_id";
        $run   = mysqli_query($con,$query);
        
        $count = mysqli_num_rows($run);
       }else{
       $count = 0;
       }
        ?>
       <!--header ---> 
             <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
               <a href="" class="navbar-brand"> 
                <sapn class="font-weight-bold" style="font-size: 50px;">ShopGi</sapn> .in
               </a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapisblenav" aria-controls="collapsiblenav">
                 <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="collapisblenav">
                 <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="../index.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="../product.php">Products</a></li>
                    <li class="nav-item"><a class="nav-link" href="../about-us.php">About us</a></li>
                    <li class="nav-item"><a class="nav-link" href="../contact-us.php">Contact us</a></li>
                      <?php if(isset($_SESSION['email'])){
                            
                       
                     ?> 
                    <li class="nav-item"><a class="nav-link" href="../notification.php"><i class="far fa-bell top-icon"></i><span class="badge badge-primary" style="position:absolute; margin-left:-5px;"><?php echo $order_count; ?> </span></a></li>
                     <?php 
                 }
                 ?>
                    <?php  
                                
                     if(isset($_SESSION['email'])){
                            
                       
                     ?>
                    <li class="nav-item ml-5"><a class="nav-link" href="index.php"><i class="far fa-user top-icon"></i> Account</a></li>
                    <?php }
                     ?>
                    <li class="nav-item"><a class="nav-link" href="../cart.php"><i class="fal fa-shopping-cart top-icon"></i><span class="badge badge-primary" style="position:absolute; margin-left:-5px;"><?php echo $count; ?> </span></a></li>
                    
                  </ul>
               </div>
             </nav>
         
    </header>