<?php
include 'condb.php';
//$drugcode = $_POST['drugcode'];
$drugname = $_POST['drugname'];

$sql = "INSERT INTO tbl_drugs 
(drugname)
VALUES
('$drugname')
";
$result=mysqli_query($condb,$sql)or die("Error in sql:$sql".mysqli_error($sql));

mysqli_close($condb);
if ($result)
{echo '<script type="text/JavaScript">';
echo 'alert("บันทึกข้อมูลเรียบร้อย")';
echo '</script>';
echo '<script>window.location=("drugs.php")</script>'; 
}
/*echo 'insert succesfully';}
else {
echo 'insert error !';}

echo '<script>window.lacation(form_drugs.php)</script>'*/
?>