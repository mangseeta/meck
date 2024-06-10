<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<style type="text/css">
form {font-size:14px;
	
}
</style>
<?php
date_default_timezone_set("Asia/Bangkok");
?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body style="background-color:pink;">
<?php
include ('condb.php');
$sql="SELECT * FROM tbl_department ORDER BY departmentname ASC" or die("Error:" .mysqli_error());
$result = mysqli_query($condb,$sql);
?>
<h2 style="color:darkblue;text-align:center"> บันทึกข้อมูล ความคลาดเคลื่อนทางยา <h2>
<div class="container">
<form action="medata_adddb.php" method="post" class="form-group">
ประเภทผู้ป่วย &nbsp;
<select name="pttype" id="pttype">
<option value="" selected disabled>-เลือกประเภทผู้ป่วย-</option>
<option value="OPD">OPD</option>
<option value="IPD">IPD</option>
<option value="NCD">NDC REFILL</option>
<option value="รพ.สต.">รพ.สต.</option>
</select> &nbsp; &nbsp; 
หน่วยงานที่เกิด error &nbsp; 
<select name="departmentname" id="departmentname">
		<option value="" selected disabled > เลือกหน่วยงาน </option>
		<?php foreach ($result as $value){ ?>
		<option value="<?=$value['departmentname']?>"><?=$value['departmentname']?> </option>
		<?php }?>
</select> 

<label> ชื่อผู้เกี่ยวข้อง </label>
<select name="nameme" id="nameme">
</select> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$('#departmentname').change(function(){
		//console.log($(this).val())
		var id =$(this).val();
		//console.log($(this).val())
		$.ajax({
			type: "POST",
			url: "testajax.php",
			data: {id:id,function:'departmentname'},
			success: function(data) {
				console.log(data);
				$('#nameme').html(data);
			}
		});
	});
</script>
<br> <br>
วันที่เกิด &nbsp;
<input type="date" name="dateme" id="dateme" >
ช่วงเวลา  &nbsp;
<select name="timeme" id="timeme">
<option value="" selected disabled > เลือกช่วงเวลา  </option>
<option value="เร่งด่วน"> เร่งด่วน </option>
<option value="ไม่เร่งด่วน"> ไม่เร่งด่วน </option>
</select> &nbsp; &nbsp;
วันทำงาน  &nbsp;
<select name="workday1" id="workday1">
<option value="" selected disabled > เลือกวันทำงาน  </option>
<option value="วันทำงานปกติ"> ปกติ </option>
<option value="วันหยุดสุดสัปดาห์"> วันหยุดสุดสัปดาห์ </option>
<option value="วันหยุดนักขัตฤกษ์"> วันหยุดนักขัตฤกษ์ </option>
</select> &nbsp; &nbsp
เวร  &nbsp;
<select name='workperiod' id='workperiod'>
<option value="" selected disabled > เลือกเวร  </option>
<option value="เวรเช้า"> เช้า </option>
<option value="เวรบ่าย"> บ่าย </option>
<option value="เวรดึก"> ดึก</option>
</select> &nbsp; &nbsp; <br><br>
LASA
<input type="checkbox" name="lasa" id="lasa" value="1"> &nbsp; &nbsp;
คู่ยาที่เกิด ME
<input type="checkbox" id="dd" name="dd" value="1"> &nbsp; &nbsp;
<!--<button onclick="uncheck(dd)"> ยกเลิก</button>
<script>
function uncheck() {
  document.getElementById("dd").checked = false;
}
</script> -->
ยาที่ถูก &nbsp;
<?php
include ('condb.php');
$sql5="SELECT * FROM tbl_drugs ORDER BY drugname ASC" or die("Error:" .mysqli_error());
$result5 = mysqli_query($condb,$sql5);
?>
<select name="drugname1" id="drugname1">
<option value="" selected disabled > เลือกรายการยา 1 </option>
<?php foreach ($result5 as $value3){?>
<option value="<?=$value3['drugname']?>"><?=$value3['drugname']?> </option>
		<?php }?>
</select> &nbsp; &nbsp;
<label for=> ยาที่ผิด  </label>&nbsp;
<select name="drugname2" id="drugname2">
<option value="" selected disabled > เลือกรายการยา 2 </option>
<?php foreach ($result5 as $value3){?>
<option value="<?=$value3['drugname']?>"><?=$value3['drugname']?> </option>
		<?php }?>
</select><br><br>
ปัญหาที่เกิด &nbsp;
<textarea rows="5" cols="30" name="prob" id="prob"> </textarea> <br><br>
<?php
include ('condb.php');
$sql3="SELECT * FROM tbl_department ORDER BY departmentname ASC" or die("Error:" .mysqli_error());
$result3 = mysqli_query($condb,$sql3);
?>
หน่วยงานที่รายงาน &nbsp;
<select name="departmentname2" id="departmentname2">
		<option value="" selected disabled > เลือกหน่วยงาน </option>
		<?php foreach ($result3 as $value2){ ?>
		<option value="<?=$value2['departmentname']?>"><?=$value2['departmentname']?> </option>
		<?php }?>
</select> &nbsp; &nbsp;
<label> ผู้รายงาน </label>
<select name="name2" id="name2">
</select> &nbsp; &nbsp;
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$('#departmentname2').change(function(){
		//console.log($(this).val())
		var id =$(this).val();
		console.log($(this).val())
		$.ajax({
			type: "POST",
			url: "ajax2.php",
			data: {id:id,function:'departmentname2'},
			success: function(data) {
				console.log(data);
				$('#name2').html(data);
			}
		});
	});
</script> 
วันที่รายงาน &nbsp;
<input type="date" name="repdate" id="repdate"><br><br>
การแก้ไข &nbsp;
<select name="edit" id="edit" >
<option value="" selected disabled > เลือกการแก้ไข </option>
<option value="แก้ไขได้"> แก้ไขได้ </option>
<option value="แก้ไขไม่ได้"> แก้ไขไม่ได้ </option>
</select> &nbsp; &nbsp;
วิธีแก้ไข &nbsp;
<textarea rows="5" cols="30" name="editmeth" id="editmeth"> </textarea> <br><br>
วิเคราะห์สาเหตุของปัญหา :<br><br>
ชนิดของปัญหา 1 &nbsp; 
<?php
//include ('condb.php');
$sql7="SELECT * FROM tbl_causetype ORDER BY causename ASC" or die("Error:" .mysqli_error());
$result7 = mysqli_query($condb,$sql7);
?>
<select name="pbtype1" id="pbtype1">
<option value="" selected disabled > เลือกชนิดปัญหา1</option>
<?php foreach ($result7 as $value4){?>
<option value="<?=$value4['causename']?>"><?=$value4['causename']?> </option>
		<?php }?>
</select> &nbsp; &nbsp;
สาเหตุของปัญหา 1&nbsp;
<!--<label> ผู้รายงาน </label> -->
<select name="cause1" id="cause1">
</select> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$('#pbtype1').change(function(){
		//console.log($(this).val())
		var id =$(this).val();
		console.log($(this).val())
		$.ajax({
			type: "POST",
			url: "ajax3.php",
			data: {id:id,function:'pbtype1'},
			success: function(data) {
				console.log(data);
				$('#cause1').html(data);
			}
		});
	});
</script> 
ชนิดของปัญหา 2 &nbsp;
<?php
//include ('condb.php');
$sql8="SELECT * FROM tbl_causetype ORDER BY causename ASC" or die("Error:" .mysqli_error());
$result8 = mysqli_query($condb,$sql8);
?>
<select name="pbtype2" id="pbtype2">
<option value="" selected disabled > เลือกชนิดปัญหา 2</option>
<?php foreach ($result8 as $value5){?>
<option value="<?=$value5['causename']?>"><?=$value5['causename']?> </option>
		<?php }?>
</select> &nbsp; &nbsp;
สาเหตุของปัญหา 2&nbsp;
<!--<label> ผู้รายงาน </label> -->
<select name="cause2" id="cause2">
</select> <br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$('#pbtype2').change(function(){
		//console.log($(this).val())
		var id =$(this).val();
		console.log($(this).val())
		$.ajax({
			type: "POST",
			url: "ajax4.php",
			data: {id:id,function:'pbtype2'},
			success: function(data) {
				console.log(data);
				$('#cause2').html(data);
			}
		});
	});
</script> <br> <br>
ระดับความเสี่ยง &nbsp;
<?php
include ('condb.php');
$sql10="SELECT * FROM tbl_risk ORDER BY risk ASC" or die("Error:" .mysqli_error());
$result10 = mysqli_query($condb,$sql10);
?>
<select name="risk" id="risk">
<option value="" selected disabled > เลือกระดับความเสี่ยง </option>
<?php foreach ($result10 as $value10){?>
<option value="<?=$value10['risk']?>"><?=$value10['risk']?> </option>
		<?php }?>
</select> 
&nbsp;&nbsp;
ชนิด ME &nbsp; &nbsp;
<?php
//include ('condb.php');
$sql9="SELECT * FROM tbl_metype ORDER BY menames ASC" or die("Error:" .mysqli_error());
$result9 = mysqli_query($condb,$sql9);
?>
<select name="metype" id="metype">
<option value="" selected disabled > เลือกชนิด ME </option>
<?php foreach ($result9 as $value6){?>
<option value="<?=$value6['menames']?>"><?=$value6['menames']?> </option>
		<?php }?>
</select> &nbsp; &nbsp;
ME &nbsp;
<!--<label> ผู้รายงาน </label> -->
<select name="me2" id="me2">
</select> <br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$('#metype').change(function(){
		//console.log($(this).val())
		var id =$(this).val();
		console.log($(this).val())
		$.ajax({
			type: "POST",
			url: "ajax5.php",
			data: {id:id,function:'metype'},
			success: function(data) {
				console.log(data);
				$('#me2').html(data);
			}
		});
	});
</script> <br> <br>
ความเสี่ยงที่ป้องกันได้ &nbsp;
<?php
include ('condb.php');
$sql11="SELECT * FROM tbl_risk ORDER BY risk ASC" or die("Error:" .mysqli_error());
$result11 = mysqli_query($condb,$sql11);
?>
<select name="risk2" id="risk2">
<option value="" selected disabled > เลือกระดับความเสี่ยง </option>
<?php foreach ($result11 as $value11){?>
<option value="<?=$value11['risk']?>"><?=$value11['risk']?> </option>
		<?php }?>
</select> 
&nbsp;&nbsp; <br>
ผู้รายงาน 
<?php
$query12 = "SELECT * FROM tbl_login ORDER BY id DESC LIMIT 1" or die("Error:" . mysqli_error($condb)); 
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result . 
$result10 = mysqli_query($condb,$query12); 
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล: 

echo "<table border='1' width='250'>";
//หัวข้อตาราง
//echo "<td>name</td>";
while($row = mysqli_fetch_array($result10)) { 
  echo "<tr>";
 // echo "<td style='color:red'>" .$row["id"] ."</td> "; 
  echo "<td style='color:red'>" .$row["name"] ."</td> ";  
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
 <br>

<button> บันทึกรายงาน </button>
</form>
</div>
<!-- รอแก้ผู้บันทึก -->
</body>

 </html>