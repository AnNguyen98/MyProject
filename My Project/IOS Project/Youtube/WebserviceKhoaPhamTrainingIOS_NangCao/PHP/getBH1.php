<?php
    $link = mysqli_connect("localhost" , "id5179030_thean","123456","id5179030_appdt");
    
    if ($mysqli->connect_errno) {
        printf("Error : %s\n", $mysqli->connect_error);
        exit();
    }
    
    $query = "SELECT Name, CountryCode FROM City ORDER by ID LIMIT 3";
    $result = $mysqli->query($query);
    
    $row = $result->fetch_array(MYSQLI_NUM);
    printf ("%s (%s)\n", $row[0], $row[1]);
    
    $row = $result->fetch_array(MYSQLI_ASSOC);
    printf ("%s (%s)\n", $row["Name"], $row["CountryCode"]);
    
    $row = $result->fetch_array(MYSQLI_BOTH);
    printf ("%s (%s)\n", $row[0], $row["CountryCode"]);
    
    $result->free();
    
    $mysqli->close();
    ?>
