<?php
include('include/dbcon.php');

if(isset($_POST['invoice-no']) && isset($_POST['reason'])) {
    $invoice_no = mysqli_real_escape_string($con, $_POST['invoice-no']);
    $reason = mysqli_real_escape_string($con, $_POST['reason']);

    // Update order status in database
    $update_query = "UPDATE customer_order SET order_status='cancelled', cancel_reason='$reason' WHERE invoice_no='$invoice_no'";
    $run_update = mysqli_query($con,$update_query);

    if($run_update){
        $_SESSION['message'] = "<div class='alert alert-success'>Order cancelled successfully.</div>";
    }
    else{
        $_SESSION['message'] = "<div class='alert alert-danger'>Failed to cancel order. Please try again.</div>";
}
}

header('location:orders.php');
exit;
