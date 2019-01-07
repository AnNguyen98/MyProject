<?php
$link = mysqli_connect("localhost", "id5179030_thean", "theank16@", "id5179030_product");

class SanPham{
    var $id,$name,$price,$image;
    function __construct($m_id,$m_name,$m_price,$m_image){
        $this->id = $m_id;
        $this->name = $m_name;
        $this->price = $m_price;
        $this->image = $m_image;
    }
}

if (!$link) {
    // echo "Error: Unable to connect to MySQL." . PHP_EOL;
    // echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    // echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    echo "Khong the ket noi!";
    exit;
}

// echo "Success: A proper connection to MySQL was made! The my_db database is great." . PHP_EOL;
// echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

if ($result = $link->query("SELECT * FROM SanPham")){
    //printf("Select returned %d row.\n",$result->num_rows);

    $arrayInf = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $sp = new SanPham($row["id"],$row["name"],$row["price"],$row["image"]);
        array_push($arrayInf,$sp);
    }
    echo json_encode($arrayInf);
    $result->close();
}