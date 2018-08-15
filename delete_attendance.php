<?php
include('admin/dbcon.php');
$get_id = $_POST['id'];
mysql_query("delete from attendance_log  where  attendance_teacher_class_id = '$get_id'; ")or die(mysql_error());
header('location:teacher_attendance.php');
?>