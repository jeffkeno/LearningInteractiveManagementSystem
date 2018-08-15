<?php
include('dbcon.php');

mysql_query("TRUNCATE TABLE `sessions`");
header("Location: subjects.php");
die();
?>
