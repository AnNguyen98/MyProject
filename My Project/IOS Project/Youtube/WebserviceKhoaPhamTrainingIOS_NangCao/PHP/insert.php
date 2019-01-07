<?php"
    $pMysqli = new mysqli('p:'.DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
    if(!$pMysqli){
        echo "Connect thành công !!";
    }else{
        echo "Error";
    }
?>
