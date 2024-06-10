<?php
require 'condb.php';
$ct =$_POST['causename1'];
$drc =$_POST['sc'];
$sql= "INSERT INTO tbl_subcause
(causename,sub_cause)
VALUES
('$ct','$drc')
";
$result=mysqli_query($condb,$sql)or die("Error in sql:$sql".mysqli_error($sql));
mysqli_close($condb);
if ($result)
{echo '<script type="text/JavaScript">';
echo 'alert("บันทึกข้อมูลเรียบร้อย")';
echo '</script>';
echo '<script>window.location=("subcause.php")</script>'; 

}
//echo '<script>window.location=("drugcause.php")</script>';
?>