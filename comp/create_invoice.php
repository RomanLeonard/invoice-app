<?php

if($_POST['client_name'] && $_POST['client_address']){
    include 'db.php';

    $client_name    = $_POST['client_name'];
    $client_address = $_POST['client_address'];

    if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); } // check if connection failed
    
    $sql_clients  = "INSERT INTO clients (name, address) 
        VALUES ($client_name, $client_address)";
    $sql_invoices = "INSERT INTO invoices (serial, number, date, client_id, items, price_total) 
        VALUES ('BIZ', '0206', '20-20-2021', 1, 1, '245')";
    $sql_items    = "INSERT INTO items (client_id, invoice_id, um, quantity, price) 
        VALUES (1, 1, 'buc', 1, '245')";

    $query_clients  = $conn->query($sql_clients);
    $query_invoices = $conn->query($sql_invoices);
    $query_items    = $conn->query($sql_items);

    if ($query_clients === TRUE && $query_invoices === TRUE && $query_items === TRUE) {
        $last_id = $query_clients->lastInsertId();


        echo json_encode($last_id);
    } else {
        echo json_encode('error'.$conn->error);
    }

}
else{
    echo json_encode('error');
}

?>