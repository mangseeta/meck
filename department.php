<html>
<head>
<title> เพิ่มข้อมูลหน่วยงาน</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h2 style="color:green"> เพิ่มหน่วยงาน </h2>
<br>
<form action="department_adddb.php" method="post" onload="cleartext()">
<div class="container">
รหัสหน่วยงาน
<input type="text" name="dep_code" placeholder="รหัสหน่วยงาน" required autocomplete="off"> <br><br>
ชื่อหน่วยงาน
<input type="text" name="departmentname" placeholder="ชื่อหน่วยงาน" required autocomplete="off"> <br> <br>
<button type="submit" class="btn btn-primary"> บันทึกข้อมูล </button> 
<!--<button type="clear" class="btn btn-danger"> ล้างข้อมูล </button> -->
</div>
</form>
</body>

</html>