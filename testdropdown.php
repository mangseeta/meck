<?php
require ('condb.php');
$sql="SELECT * FROM tbl_department ORDER BY departmentname ASC";
$query = mysqli_query($condb,$sql);

?>
<html>
<head>
<meta charset="uft8">
<meta name="viewport" content="width=device-width ,initial-scale=1.0">
</head>
<body>
<label> test department </label>
<select name="departmentname" id="departmentname">
		<option value="" selected disabled > เลือกหน่วยงาน </option>
		<?php foreach ($query as $value){ ?>
		<option value="<?=$value['departmentname']?>"><?=$value['departmentname']?> </option>
		<?php }?>
</select> <br>

<label> testmember name </label>
<select name="name" id="name">
</select> <br>

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
				//console.log(data);
				$('#name').html(data);
			}
		});
	});
</script

</body>
</html>