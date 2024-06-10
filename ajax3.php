<?php
//print_r($_POST);
//exit();
require ('condb.php');
if (isset($_POST['function'])&& $_POST['function'] == 'pbtype1'){
	$id4 = $_POST['id'];
	$sql11 = "SELECT * FROM tbl_subcause WHERE causename ='$id4'";
	$result10 = mysqli_query($condb,$sql11);
	echo '<option value="" selected disabled > เลือกผู้เกี่ยวข้อง </option> ';
	foreach($result10 as $value){
		echo '<option value="'.$value['sub_cause'].'">'.$value['sub_cause'].'</option>';

	}
	exit();
}
//echo $_POST['function'];

?>