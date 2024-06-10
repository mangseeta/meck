<?php
include 'condb.php';
//$depid = $_POST['dep_id'];
$drugname =$_POST['drugname'];
$drugcode=$_POST['drugcode'];

$sql = "INSERT INTO tb_drug
(drug_code,drug_name)
VALUES
('$drugcode','$drugname')";
$result = mysqli_query($condb,$sql) or die ("Error in sql:$sql " . mysqli_error($sql));
mysqli_close($condb);

echo "<script>alert('บันทึกข้อมูลของท่านเรียบร้อยแล้ว')</script>";
echo "<script>window.location='tb_drug_add_form.php'</script>";
?>