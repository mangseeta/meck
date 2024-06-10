<html>
<head>
<title> เพิ่มข้อมูล ME </title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<?php
//require ('condb.php');
?>
</head>
<body style="background-color:pink">
<h1 style="color:green;text-align:center"> เพิ่มข้อมูลรายการ ME </h1>
<form action="" method="post">
<div class="container">
<?php
require ('condb.php');
$sql="SELECT * FROM tbl_metype ORDER BY menames ASC" or die("Error:" .mysqli_error());
$result=mysqli_query($condb,$sql);
?>
<select >
<option name="metype2" id="metype2" value="" selected disabled  > เลือกชนิด ME </option>
<?php foreach ($result as $value){?>
<option value="<?=$value['menames']?>"><?=$value['menames']?> </option>
		<?php }?>
<option>
</select>  <br> <br>
<input type="text" name="mename" id="mename" class="form-froup" autocomplete="off"><br> <br>
<input type="submit" name="submit" id="submit" value="บันทึก" class="btn btn-primary">
<button type="clear" name="submit2" id="submit2" value="ล้างข้อมูล" class="btn btn-danger"> ล้างข้อมูล  </button>
</div>
<?php 
mysqli_close($condb)
?>

</body>
</html>