<?php
include 'condb.php';
$name =$_POST['name'];
$department =$_POST['departmentname'];
$username   =$_POST['username'];
$password  =$_POST['password'];
$level =$_POST['level'];

$sql = "INSERT INTO tbl_member
(name,department,username,password,level)
VALUES
('$name','$department','$username','$password','$level')
";
$result = mysqli_query($condb,$sql) or die("Error in sql :$sql".mysqli_error($sql));
mysqli_close($condb);

if($result) {
	 echo '<script type ="text/JavaScript">';  
echo 'alert("บันทึกสำเร็จ")';  
echo '</script>'; 
}
echo '<script>window.location=("dboard.php")</script>';
/*<script>
location.reload();
</script>;
/*<script>
window.location();
</script>
} /*
else { 
	alert2("บันทึกข้อมูลไม่สำเร็จ");
	{
    echo "<script type='text/javascript'>alert2('$msg');</script>";
}
}
*/
?>