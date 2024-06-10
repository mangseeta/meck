<?php
//print_r($_POST);
//exit();
require ('condb.php');
if (isset($_POST['function'])&& $_POST['function'] == 'departmentname'){
	$id = $_POST['id'];
	$sql2 = "SELECT * FROM tbl_member WHERE department ='$id'";
	$query2 = mysqli_query($condb,$sql2);
	echo '<option value="" selected disabled > เลือกผู้เกี่ยวข้อง </option> ';
	foreach($query2 as $value){
		echo '<option value="'.$value['departmentname'].'">'.$value['name'].'</option>';

	}
	exit();
}
//echo $_POST['function'];

?>