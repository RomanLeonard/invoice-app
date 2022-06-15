<?php

  include 'db.php';

  $sql = "SELECT * FROM invoices";

  $invoices = [];

  $result = mysqli_query($conn, $sql);

  if( $result ){

    // return values

  } else { $invoices = 'error'; }

  echo $invoices;

?>
