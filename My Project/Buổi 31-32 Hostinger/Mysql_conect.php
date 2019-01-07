<meta charset="UTF-8">
<?php
$link = mysqli_connect("localhost", "id5179030_thean", "theank16@", "id5179030_product");

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

    // $return_arr = array();
    // while ($row = mysqli_fetch_assoc($result)) {
    //     $row_array['id'] = $row['id'];
    //     $row_array['name'] = $row['name'];
    //     $row_array['price'] = $row['price'];
    //     $row_array['image'] = $row['image'];
    //     array_push($return_arr,$row_array);
    // }
    // echo json_encode($return_arr);
    // $result->close();
}


mysqli_close($link);
?>