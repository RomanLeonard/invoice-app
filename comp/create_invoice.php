<?php

if($_POST['client_name'] && $_POST['client_address']){
    include 'db.php';

    // CLIENT
    $client_name    = mysqli_real_escape_string($conn, $_POST['client_name']);
    $client_cui     = (!empty($_POST['client_cui'])) ? mysqli_real_escape_string($conn, $_POST['client_cui']) : 0;
    $client_onrc    = (!empty($_POST['client_onrc'])) ? mysqli_real_escape_string($conn, $_POST['client_onrc']) : 0;
    $client_address = mysqli_real_escape_string($conn, $_POST['client_address']);
    $client_iban    = (!empty($_POST['client_iban'])) ? mysqli_real_escape_string($conn, $_POST['client_iban']) : 0;
    $client_bank    = (!empty($_POST['client_bank'])) ? mysqli_real_escape_string($conn, $_POST['client_bank']) : 0;
    $client_mobile  = (!empty($_POST['client_mobile'])) ? mysqli_real_escape_string($conn, $_POST['client_mobile']) : 0;
    $client_email   = (!empty($_POST['client_email'])) ? mysqli_real_escape_string($conn, $_POST['client_email']) : 0;

    $sql_clients = "INSERT INTO clients (name, cui, onrc, address, iban, bank, mobile, email) 
        VALUES ('$client_name', '$client_cui', '$client_onrc', '$client_address', '$client_iban', '$client_bank', '$client_mobile', '$client_email')";
    if( mysqli_query($conn, $sql_clients) ){
        echo json_encode('added');
        $client_id = mysqli_insert_id($conn);
    } else{ echo json_encode('<br>error: '.mysqli_error($conn)); }
   

    // INVOICE
    $invoice_serial = 'BIZ'; //mysqli_real_escape_string($conn, $_POST['invoice_serial']);
    $invoice_number = '001'; //mysqli_real_escape_string($conn, $_POST['invoice_number']);
    $invoice_date   = date('Y-m-d');

    $items  = [];
    foreach($_POST['invoice_items'] as $item){
        array_push($items, mysqli_real_escape_string($conn, $item));
    }
    $invoice_items = json_encode($items);

    $sql_invoices = "INSERT INTO invoices (serial, number, date, client_id, items, price_total, status) 
        VALUES ('BIZ', '0206', '$invoice_date', $client_id, '$invoice_items', 245, 'normal')";
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