<?php
require ('condb.php');
$pttype =$_POST['pttype'];

$sql ="INSERT INTO tbl_pttype
(name)
VALUES
('$pttype')
";
$result=mysqli_query($condb,$sql)or die("Error in sql:$sql".mysqli_error($sql));

mysqli_close($condb);
if ($result) {
	echo '<script type="text/JavaScript">';
echo 'alert("บันทึกข้อมูลเรียบร้อย")';
echo '</script>';
echo '<script>window.location=("pttype.php")</script>';
}


?>