<html>
<head>
<title> เพิ่มข้อมูลยา</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width;initial-scale=1.0">

</head>
<body style="background-color:aqua">
<h2 style="color:green;text-align:center"> เพิ่มรายการยา </h2>
<br>
<form action="drug_adddb.php" method="post" autocomplete="off">
<!--drugcode
<input type="text" name="drugcode" placeholder="รหัสยา 5 หลัก" required> <br><br> -->
drugname &nbsp
<input type="text" name="drugname" placeholder="ชื่อยา" required> <br> <br>

&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <button> บันทึกข้อมูล </button>
</form>
<h3 style="color:red">รายการยาลำดับสุดท้ายคือ  </h3>

<?php
//1. เชื่อมต่อ database: 
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี

//2. query ข้อมูลจากตาราง tb_member: 
$query = "SELECT * FROM tbl_drugs ORDER BY id DESC LIMIT 1" or die("Error:" . mysqli_error($condb)); 
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result . 
$result = mysqli_query($condb,$query); 
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล: 

echo "<table border='1' width='250'>";
//หัวข้อตาราง
echo "<tr> <td>id</td><td>drugs_name</td>";
while($row = mysqli_fetch_array($result)) { 
  echo "<tr>";
  echo "<td style='color:red'>" .$row["id"] ."</td> "; 
  echo "<td style='color:red'>" .$row["drugname"] ."</td> ";  
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
<form action="<?php echo $_SERVER['SCRIPT_NAME'];?>" method="get" autocomplete="off"> <br>
ค้นหาชื่อยา  <br>
<input type="text" name="search" id="search" value="<?php echo $_GET['search'];?> ">
<input type="submit" value="ค้นหาชื่อยา">
</form>
<?php
include ('condb.php'); 
$drug = (isset($_GET['search']));
if($_GET['search'] !=' ');
	$sql= "SELECT drugname FROM tbl_drugs WHERE (drugname LIKE '%".($_GET['search']) ."%')" or die("Error:" . mysqli_error($condb));
	$kquery = mysqli_query($condb,$sql);
// เชื่อมต่อฐานข้อมูล
//echo $row;  
while ($row = mysqli_fetch_array($kquery)){
//$row = mysqli_fetch_assoc($kquery);
	 echo $row["drugname"];
}
 

 mysqli_close($condb); ?>


</body>
<!-- รอแก้ไขเพิ่มเติม  -->

</html>