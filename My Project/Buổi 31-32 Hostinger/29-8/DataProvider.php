<?php
	define("SERVER","localhost");
    define("DATABASE","id5179030_product");
    define("USERNAME","id5179030_thean");
    define("PASSWORD","theank16@");

	class DataProvider
	{
		public static function execQuery($sql)
		{
			$conn = mysqli_connect(SERVER, USERNAME, PASSWORD, DATABASE);
			if (!$conn) {
    			echo "Error: Unable to connect to MySQL." . PHP_EOL;
    			echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    			echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
  			  exit;
  			}
			$result = mysqli_query($conn, $sql);
			if (!$result) {
            die("Query failed: " . mysql_error());
        }
        mysqli_close($conn);
			return $result;
		}
	}

?>
