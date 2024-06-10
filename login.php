<?php
session_start();
if (isset($_POST['username'])){
	include('condb.php');
	$username =$_POST['username'];
	$password =$_POST['password'];
	/*$sql1="INSERT INTO tb_login (username) VALUES($username)";
	$result1=mysqli_query($condb,$sql1);*/
	$query="SELECT * FROM tbl_member WHERE username='$username' AND password='$password'";
	$result = mysqli_query($condb,$query);
	if (mysqli_num_rows($result)== 1){
		$row = mysqli_fetch_array($result);
		$_SESSION['username'] = $row['username'];
		$_SESSION['level'] =$row['level'];
		$_SESSION['membername'] =$row['membername'];
		
		if ($_SESSION['level']=='1'){
			// ทดลองเก็บข้อมูลล็อกอิน
			$uname = $_SESSION['username'];
			$name = $_SESSION['membername'];
			$sql2 = "INSERT INTO tbl_login 
			    (username,name) 
			    VALUES
			   ('$uname','$name')";
			$result2 = mysqli_query($condb,$sql2) or die ("error ".mysqli_error($condb));
				//exit;
			header("location:frame1.php");
		}
		if ($_SESSION['level']=='2'){
			$uname = $_SESSION['username'];
			$name = $_SESSION['name'];
			$sql2 = "INSERT INTO tbl_login 
			    (username,name) 
			    VALUES
			   ('$uname','$name')";
			$result2 = mysqli_query($condb,$sql2) or die ("error ".mysqli_error($condb));
			header("location:frame2.php");
		}
		if ($_SESSION['level']=='3'){
			$uname = $_SESSION['username'];
			$name = $_SESSION['name'];
			$sql2 = "INSERT INTO tbl_login 
			    (username,name) 
			    VALUES
			   ('$uname',''$name)";
			$result2 = mysqli_query($condb,$sql2) or die ("error ".mysqli_error($condb));
			header("location:frame3.php");
		}
		else {
			echo "<script>alert(user หรือ password ไม่ถูกต้อง);</script>";
		}
		//else {
			//header(location:indec.php);
		//}
	}
}



?>