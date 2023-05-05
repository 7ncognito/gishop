<?php 
include('include/header.php');

if(!isset($_SESSION['email'])){
    header('location:../sign-in.php');
    exit;
}

$cust_id = $_SESSION['id'];
$query = "SELECT * FROM cart WHERE cust_id=$cust_id";
$run = mysqli_query($con, $query);

$count = mysqli_num_rows($run);

$customer_id = $_SESSION['id'];
$order_query = "SELECT * FROM customer_order WHERE customer_id=$customer_id AND order_status IN ('verified', 'delivered')";
$run = mysqli_query($con, $order_query);

$order_count = mysqli_num_rows($run);
?>

<div class="jumbotron bg-secondary">
    <h1 class="text-center text-white mt-5">Notifications</h1>
</div>

<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-9">
            <hr>
            <?php 
            if($order_count > 0){ ?>
                <p>You have <?php echo $order_count; ?> new notifications.</p>
                <ul>
  <?php while($order_row = mysqli_fetch_array($run)){
      $order_invoice = $order_row['invoice_no'];
      $order_pro_id  = $order_row['product_id'];
      $order_qty     = $order_row['products_qty'];
      $order_amount  = $order_row['product_amount'];
      $order_date    = $order_row['order_date'];
      $order_status  = $order_row['order_status'];

      $pro_query  = "SELECT * FROM gi_product WHERE pid=$order_pro_id";
      $pro_run    = mysqli_query($con,$pro_query);

      if(mysqli_num_rows($pro_run) > 0){
          while($pr_row = mysqli_fetch_array($pro_run)){
              $title = $pr_row['title'];
              $img1 = $pr_row['image'];
              ?> 
              <li><h5></h5>
                    <h4><i class="far fa-bell top-icon"></i></h4>
                  <h4><?php echo $title;?></h4>
                  <p>Total Price (INR):₹ <?php echo $order_amount;?></p>
                  <p>Date: <?php echo $order_date;?></p>
                  <p> 
                      <?php 
                      if($order_status == 'pending'){
                          echo "<i class='far fa-exclamation-circle text-warning'></i> $order_status";
                      } else if($order_status == 'verified'){
                          echo "<i class='far fa-check-circle text-success'></i> $order_status";
                      } else if($order_status == 'delivered'){
                          echo "<i class='far fa-truck text-primary'></i> $order_status";
                      }
                      ?>
                  </p>
                  <p>
                      <?php 
                      if($order_status != 'delivered'){
                          echo '<a href="customer/orders.php">view</a>';
                      } else {
                          echo '<a href="admin/invoice.php?invoice='.$order_invoice.'"><i class="fad fa-arrow-alt-circle-down fa-3x text-primary"></i></a>';
                      }
                      ?>
                  </p>
              </li>   
          <?php }
      } 
  } ?>
</ul>

            <?php } else {
                echo "<h2 class='text-center text-secondary mt-5 mb-5'>You haven't ordred anything yet </h2>";
              }
              ?>
          
           </div>
   </div>

 </div>
 
<?php include('include/footer.php'); ?>
</body>
<style>
    .jumbotron {
  background-color: #6c757d;
  color: #fff;
}


li {
    display: flex;
  justify-content: space-between;
}

.fa-3x {
  font-size: 2em;
}

</style>

   