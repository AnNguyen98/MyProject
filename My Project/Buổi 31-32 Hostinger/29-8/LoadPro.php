<?php
	include_once('Product.php');
  $list = SanPham::loadAllProducts();
	echo json_encode($list); 
?>
