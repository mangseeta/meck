<?php
session_start();
echo '<h2>sesion</h2>';

$_SESSION['member_id']=1;
$_SESSION['member_name']='kenseeta';
$_SESSION['phone']='0895482461';
$_SESSION['email']='mangseeta@gmail.com';

echo'<pre>';
print_r ($_SESSION);
echo '</pre>';

?>
