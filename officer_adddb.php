<?php
include 'condb.php';
$ofname =$_POST['ofname'];
$depname =$_POST['depname'];
$username   =$_POST['username'];
$password  =$_POST['password'];
$userlevel =$_POST['userlevel'];

$sql = "INSERT INTO tb_officcer
(ofname,depname,username,password,userlevel)
VALUES
('$ofname','$depname','$username','$password','$userlevel')
";
$result = mysqli_query($condb,$sql) or die("Error in sql :$sql".mysqli_error($sql));
mysqli_close($condb);

if($result) {
	 echo '<script type ="text/JavaScript">';  
echo 'alert("บันทึกสำเร็จ")';  
echo '</script>'; 
}
echo '<script>window.location=("officer.php")</script>';
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