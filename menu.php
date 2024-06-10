<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="utf-8">
</head>
<body style="background-color:palegreen;">
<hr style="background-color:Red;height:3px;color=green;"> <br>
<form>
<button type="submit" formaction="medata.php" formtarget="dashb">บันทึกข้อมูล ME </button> <br> <br>
<button type="submit" formaction="drugs.php" formtarget="dashb"> เพิ่มข้อมูลยา </button> <br> <br>
<button type="submit" formaction="member.php" formtarget="dashb"> เพิ่มข้อมูลเจ้าหน้าที่ </button> <br> <br>
<button type="submit" formaction="department.php" formtarget="dashb"> เพิ่มข้อมูลหน่วยงาน </button> <br> <br>
<button type="submit" formaction="mename.php" formtarget="dashb"> เพิ่มข้อมูล ME </button> <br> <br>
<button > บันทึกข้อมูล  </button> <br> <br>
<!--<button onclick='window.close()'> จบการทำงาน </button>  --><br> <br>
<script>
function closeWindow(){
	window.close();
}
</script>
<button onclick="window.close()"> ปิดหน้าต่าง </button>
</form>
</body>

 </html>