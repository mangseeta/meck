<html>
<head>
<title>subcause </title>
</head>
<body style="background-color:green">
<h1 style="color:red;text-align:center"> drugcause <h1>
<form action="sc_input.php" method="post">
<?php
include ('condb.php');
$sql5="SELECT * FROM tbl_causetype ORDER BY causename ASC" or die("Error:" .mysqli_error());
$result5 = mysqli_query($condb,$sql5);
?>
<select name="causename1" id="causename1">
<option value="" selected disabled > เลือกสาเหตุ </option>
<?php foreach ($result5 as $value3){?>
<option value="<?=$value3['causename']?>"><?=$value3['causename']?> </option>
		<?php }?>
</select> &nbsp; &nbsp;
<input type="text" name="sc" id="sc" autocomplete="off">
<input type="submit" value="บันทึกข้อมูล">
</form>
<?php 
require ('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี

//2. query ข้อมูลจากตาราง tb_member: 
$query = "SELECT * FROM tbl_subcause ORDER BY causename" or die("Error:" . mysqli_error($condb)); 
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result . 
$result = mysqli_query($condb,$query); 
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล: 

echo "<table border='1' width='400'>";
//หัวข้อตาราง
echo "<tr> <td>id</td> <td>causename</td><td>sub_cause</td>";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td style='color:blue'>" .$row["id"] ."</td> ";
   echo "<td style='color:blue'>" .$row["causename"] ."</td> "; 
  echo "<td style='color:blue'>" .$row["sub_cause"] ."</td> ";  
  //แก้ไขข้อมูล
  // echo "<td><a href='UserUpdateForm.php?ID=$row[0]'>edit</a></td> ";
  
  //ลบข้อมูล
  //echo "<td><a href='UserDelete.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\">del</a></td> ";
  //echo "</tr>";
}
echo "</table>";
//5. close connection
mysqli_close($condb);


?>
</body>
</html>