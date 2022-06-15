<?php

  include 'db.php';

  $sql = "SELECT number FROM invoices WHERE id > 0 ORDER BY id DESC LIMIT 1";

  if( mysqli_query($conn, $sql) ){
    $row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
    $last_invoice_number = (int) $row['number'];
  } else { $last_invoice_number = ''; }

  echo json_encode($last_invoice_number);

?>
