<?php
//print_r($_POST);
//exit();
require ('condb.php');
if (isset($_POST['function'])&& $_POST['function'] == 'departmentname2'){
	$id2 = $_POST['id'];
	$sql4 = "SELECT * FROM tbl_member WHERE department ='$id2'";
	$result4 = mysqli_query($condb,$sql4);
	echo '<option value="" selected disabled > เลือกผู้เกี่ยวข้อง </option> ';
	foreach($result4 as $value){
		echo '<option value="'.$value['membername'].'">'.$value['membername'].'</option>';

	}
	exit();
}
//echo $_POST['function'];

?>