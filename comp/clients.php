<?php

$sql = "SELECT * FROM clients";

$names=[];
$addresses=[];
$mobiles=[];

    if ($result = $conn->query($sql)) {
        while($obj = $result->fetch_object()){
            array_push($names, $obj->name);
            array_push($addresses, $obj->address);
            array_push($mobiles, $obj->mobile);
        }
    }
    $result->close();
        unset($obj);
        unset($sql);
        unset($query); 
    return $names;


?>