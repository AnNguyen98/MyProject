<meta charset="UTF-8">
<?php
include_once('DataProvider.php');
class SanPham
{
    var $id,$name,$price,$image;

    function __construct($m_id, $m_name, $m_price, $m_image)
    {
      $this->id = $m_id;
      $this->name = $m_name;
      $this->price = $m_price;
      $this->image = $m_image;
    }


    public static function loadAllProducts()
    {
        $arr = array();
        $sql = "SELECT * FROM SanPham";
        $list = DataProvider::execQuery($sql);
        while ($row = mysqli_fetch_array($list)) {

          $sp = new SanPham($row["id"], $row["name"], $row["price"], $row["image"]);
          array_push($arr, $sp);

        }
        return $arr;
    }
}
