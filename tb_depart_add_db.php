<?php
include 'condb.php';
//$depid = $_POST['dep_id'];
$name =$_POST['name'];
$id=$_POST['id'];

$sql = "INSERT INTO department
(dep_id,name)
VALUES
('$id','$name')";
$result = mysqli_query($condb,$sql) or die ("Error in sql:$sql " . mysqli_error($sql));
mysqli_close($condb);
?>