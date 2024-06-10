<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width initial-scale=1.0">
<meta charset="utf-8">
</head>

<body style="background-color:violet;">
<?php
include ('condb.php');
$sql="SELECT * FROM department ORDER BY dep_code asc" or die("Error:" .mysqli_error());
$result = mysqli_query($condb,$sql);
?>
<h2> เพิ่มเจ้าหน้าที่ <h2>
<form action="officer_adddb.php" method="post">
ofname
<input type="text" name="ofname" placeholder="ชื่อ สกุล" required><br> <br>
depname
<select name="depname" required>
<option value="" >-เลือกหน่วยงาน-</option>
<?php foreach($result as $results){?>
<option value="<?php echo $results["dpname"];?>">
<?php echo $results["dpname"];?>
</option>
<?php }?>
</select>  <br> <br>
username
<input type="text" name="username" placeholder="ชื่อผู้ใช้งาน" required> <br> <br>
password
<input type="password" name="password" placeholder="รหัสผ่าน" required> <br> <br>
userlevel
<input type="text" name="userlevel" placeholder="ระดับการใช้งาน" required> <br> <br>
 <button input="submit"> บันทึกข้อมูล </button>
 </form>
 <!--<button a href="<?php echo'frame1.php' ?>"> กลับหน้าแรก</button> -->
</body>

 </html>