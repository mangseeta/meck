<?php 
require 'condb.php';
$pttype = $_POST['pttype'];
$departmentname = $_POST['departmentname'];
$nameme = $_POST['nameme'];
$dateme = $_POST['dateme'];
$timeme = $_POST['timeme'];
$workday = $_POST['workday1'];
$workpr = $_POST['workperiod'];
$lasa = $_POST['lasa'];
$dd = $_POST['dd'];
$drug1 = $_POST['drugname1'];
$drug2 = $_POST['drugname2'];
$prob = $_POST['prob'];
$repdep = $_POST['departmentname2'];
$reporter = $_POST['name2'];
$repdate = $_POST['repdate'];
$edit = $_POST['edit'];
$editmt = $_POST['editmeth'];
$cause1 = $_POST['pbtype1'];
$cdetail = $_POST['cause1'];
$cause2 = $_POST['pbtype2'];
$cdetail2 = $_POST['cause2'];
$risk1 = $_POST['risk'];
$metype = $_POST['metype'];
$medt = $_POST['me2'];
$riskb = $_POST['risk2'];
//$metype = $_POST['metype'];
//$metype = $_POST['metype'];
$sql = "INSERT INTO tbl_mederrordata 
(pttype,department_me,person_me,date_me,time_me,workday,
workperiod,lasa,drug_error,drug1,drug2,mem,reportdep,reporter
,date_report,edit,edit_method,cause1,causedetail1,cause2,causedetail2,
risklevel,metype,medetail,riskblock)
VALUES
('$pttype','$departmentname','$nameme','$dateme','$timeme',
'$workday','$workpr','$lasa','$dd','$drug1','$drug2','$prob','$repdep'
,'$reporter','$repdate','$edit','$editmt','$cause1','$cdetail','$cause2','$cdetail2',
'$risk1','$metype','$medt','$riskb')
";
$result=mysqli_query($condb,$sql)or die("Error in sql:$sql".mysqli_error($sql));

mysqli_close($condb);
if ($result)
{echo '<script type="text/JavaScript">';
echo 'alert("บันทึกข้อมูลเรียบร้อย")';
echo '</script>';
echo '<script>window.location=("medata.php")</script>'; 

}
// เหลือส่งค่าผู้บันทึก
?>