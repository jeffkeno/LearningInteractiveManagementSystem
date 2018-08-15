<?php
include('dbcon.php');
//Start session
if (session_status() === PHP_SESSION_NONE){
  session_start();
}else{
  header("location: index.php");
  exit();
}

$_SESSION["timeout"] = time();
$session_time = $_SESSION["timeout"];

$ipaddress = $_SERVER['REMOTE_ADDR'];
$_SESSION['ip_data'] = $ipaddress;
$ip_data = $_SESSION['ip_data'];


//Check whether the session variable SESS_MEMBER_ID is present or not
if (!isset($_SESSION['id']) || ($_SESSION['id'] == '')) {
    header("location: index.php");
    exit();
}

$session_id=$_SESSION['id'];

//session add
$query_session = mysql_query("SELECT * FROM sessions")or die(mysql_error());
$num_row_session = mysql_num_rows($query_session);

if($num_row_session = 0){
  mysql_query("INSERT into sessions SET session_id='$session_id' , user_id ='$ip_data' , login_time = '$session_time'") or die(mysql_error());
}else{
  mysql_query("TRUNCATE TABLE `sessions`");
  mysql_query("INSERT into sessions SET session_id='$session_id' , user_id ='$ip_data' , login_time = '$session_time'") or die(mysql_error());
}


?>
