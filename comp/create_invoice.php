<?php

if($_POST['client_name'] && $_POST['client_address']){
    include 'db.php';

    // CLIENT
    $client_name    = $_POST['client_name'];
    $client_address = $_POST['client_address'];

    $sql_clients = "INSERT INTO clients (name, address) 
        VALUES ('$client_name', '$client_address')";
    if( mysqli_query($conn, $sql_clients) ){
        echo json_encode('added');
        $client_id = mysqli_insert_id($conn);
    } else{ echo json_encode('<br>error: '.mysqli_error($conn)); }
   

    // INVOICE
    $itemss = ['item1', 'itemss2', 'iteemm3'];
    $items_to_add = json_encode($itemss);

    $sql_invoices = "INSERT INTO invoices (serial, number, date, client_id, items, price_total) 
        VALUES ('BIZ', '0206', '20-20-2021', $client_id, 'aefaefaef', '245')";
     if( mysqli_query($conn, $sql_invoices) ){
        echo json_encode('added');
        $client_id = mysqli_insert_id($conn);
    } else{ echo json_encode('<br>error: '.mysqli_error($conn)); }
    
    
    mysqli_close($conn);
}
else{
    echo json_encode('error');
}

?>