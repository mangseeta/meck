<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width initial-scale=1.0">

</head>
<?php
include 'condb.php';
$sql="SELECT departmentname FROM tbl_department ORDER BY dep_code asc" or die("Error:" .mysqli_error());
$result = mysqli_query($condb,$sql);
?>
<body style="background-color:aqua">
<h1 style="color:fuchsia;text-align:center";> เพิ่มข้อมูลสมาชิก </h1>
<form action="member_add.php" method="post">
<label style="color:blue"> ชื่อผู้ใช้งาน </label> &nbsp &nbsp &nbsp <input type="text" name="username" placeholder="username" required autocomplete="off"> <br> <br>
<label style="color:blue"> รหัสผ่าน </label> &nbsp &nbsp &nbsp &nbsp &nbsp <input type="password" name="password" placeholder="password" required> <br> <br>
<label style="color:blue"> ชื่อ - สกุล </label> &nbsp &nbsp &nbsp &nbsp  <input type="text" name="name" placeholder="name" required autocomplete="off"> <br> <br>
<label style="color:blue"> หน่วยงาน  </label> &nbsp &nbsp &nbsp &nbsp  <select name="departmentname"> <option value="" selected disabled> เลือกหน่วยงาน </option>
<?php foreach($result as $results){?>
<option value="<?php echo $results['departmentname'];?>">
<?php echo $results["departmentname"];?>
</option> <?php } ?>
</select> <!--<input type="text" name="department" placeholder="department" required> --><br> <br>
<label style="color:blue"> กลุ่มผู้ใช้งาน </label> &nbsp &nbsp <input type="text" name="level" placeholder="level" required autocomplete="off"> <br> <br>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <input type="submit" value="บันทึก">

</form>
</body>

</html>
