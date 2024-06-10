<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width initial-scale=1.0">
<meta charset="utf-8">
<?php
date_default_timezone_set("Asia/Bangkok");
?>
<?php 
//session_start();
/*include('login.php');
$name=$_POST['username'];
$sql="SELECT * FROM tbl_login WHERE name='$name'";
$result=mysqli_query($condb,$sql) or die("Error".mysqli_error($sql));
$query=mysqli_fetch_array();*/
?>
</head>
<body style="background-color:cyan;">
<h1 style="color:tomato; text-align:center;"> ระบบฐานข้อมูลความคลาดเคลื่อนทางยา </h1>
<h3 style="color:tomato; text-align:center;"> โรงพยาบาลสมเด็จพระยุพราชเชียงของ จังหวัดเชียงราย </h3>
<h3 style="color:crimson; text-align:left;"> ยินดีต้อนรับคุณ  <?php echo '&nbsp';
include ('condb.php');
$sql2 = "SELECT * FROM tbl_login ORDER BY id DESC LIMIT 1";
// echo $sql2;
$result = mysqli_query($condb,$sql2);
$row = mysqli_fetch_array($result);
echo $row ['name']; echo '&nbsp'; echo "วันนี้วันที่       ".date("d/m/y"); echo '&nbsp'; echo " เวลา &nbsp;" .date("h:i:sa");?> </h3> 


</body>
 </html>