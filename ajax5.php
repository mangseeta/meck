<?php
//print_r($_POST);
//exit();
require ('condb.php');
if (isset($_POST['function'])&& $_POST['function'] == 'metype'){
	$id = $_POST['id'];
	$sql10 = "SELECT * FROM tbl_mename WHERE menames ='$id'";
	$result9 = mysqli_query($condb,$sql10);
	echo '<option value="" selected disabled > เลือก ME </option> ';
	foreach($result9 as $value){
		echo '<option value="'.$value['mesubname'].'">'.$value['mesubname'].'</option>';

	}
	exit();
}
//echo $_POST['function'];

?>