<?php
session_start();
include 'condb.php';
/*mysql_connect("localhost","root",);
mysql_select_db("meck1");*/
$username =$_POST['username'];
$password =$_POST['password'];
$sql = "SELECT * FROM tb_member 
WHERE username ='.$username';
AND password = '.$password' ";
$result = mysqli_query($condb,$sql);
if(mysqli_num_rows($result)==1){
	$row = mysql_fetch_array($result);
	
$_SESSION["names"] = $row["names"];
$_SESSION["userlevel"] = $row["userlevel"];

if($_SESSION["userlevel"]=="1"){
	header("location:admin.php");
}
if ($_SESSION["userlevel"]=="2"){
	header("location:user.php");
}
if ($_SESSION["userlevel"]=="3"){
	header("location:mornitor.php");
}
}
 else
{
echo "Username and Password Incorrect!";
}
/*else
{
$_SESSION["UserID"] = $objResult["UserID"];
$_SESSION["Status"] = $objResult["Status"];*/
 
session_write_close();

mysql_close();
?>