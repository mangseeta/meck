<?php
include 'condb.php';
$dep_code = $_POST['dep_code'];
$departmentname = $_POST['departmentname'];

$sql = "INSERT INTO tbl_department 
(dep_code,departmentname)
VALUES
('$dep_code','$departmentname')
";
$result=mysqli_query($condb,$sql)or die("Error in sql:$sql".mysqli_error($sql));

mysqli_close($condb);
if ($result)
	if($result) {
	 echo '<script type ="text/JavaScript">';  
echo 'alert("บันทึกสำเร็จ")';  
echo '</script>'; 
echo '<script>window.location=("department.php")</script>'; 
echo '<script>document.contact-form.reset()</script>'; 
}
/*echo '<script>parent.window.location.reload(true)</script>';
echo 'insert succesfully';}
else {
echo 'insert error !';}*/


?>