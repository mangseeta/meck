<?php
//print_r($_POST);
//exit();
require ('condb.php');
if (isset($_POST['function'])&& $_POST['function'] == 'pbtype2'){
	$id5 = $_POST['id'];
	$sql12 = "SELECT * FROM tbl_subcause WHERE causename ='$id5'";
	$result12 = mysqli_query($condb,$sql12);
	echo '<option value="" selected disabled > เลือกผู้เกี่ยวข้อง </option> ';
	foreach($result12 as $value){
		echo '<option value="'.$value['sub_cause'].'">'.$value['sub_cause'].'</option>';

	}
	exit();
}
//echo $_POST['function'];

?>