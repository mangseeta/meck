<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width initial-scale=1.0">
<meta charset="utf-8">
</head>
<body style="background-color:violet;">
<h2> หน้าหลัก ปกติโชว์สถิติต่างๆ จะเปลี่ยนไปตามเมนูที่เรากด <h2>
<H3> เลือกหน้าที่จะไป</H3>

<button> <a href="officer.php" target="iframe">เพิ่มเจ้าหน้าที่</a>
</button>
<button> <a href="department.php" target="iframe">เพิ่มหน่วยงาน</a>
</button>
<button> <a href="meow.php" target="iframe">meowpage</a>
</button>
<hr>
<?php
echo'<iframe src="iframe3.php" 
		frameborder="0"
		width="100%"
		height="100%"
		name="iframe"
		>
		</iframe>';
		?>
</body>

 </html>