<?php
include('dbcon.php');
$attendance_name=$_POST['attendance_name'];
$session_id = $_POST['session_id'];
$subject_id = $_POST['subject_id'];
$class_id = $_POST['class_id'];
$school_year = $_POST['school_year'];
echo $attendance_name;
$query = mysql_query("select * from teacher_class b
						 inner join attendance_log a
 						 on a.attendance_teacher_class_id=b.teacher_class_id
 					  where attendance_name='$attendance_name' 
 					  and teacher_id='$session_id' ")or die(mysql_error());
$count = mysql_num_rows($query);
$id   = $row['attendance_teacher_class_id']
if (true){ 
echo "true";
}else{

mysql_query("insert into attendance_log(attendance_name,attendance_teacher_class_id,attendance_class_id,attendance_subject_id,attendance_date)
 values('$attendance_name','$id','$class_id',$subject_id,now())")or die(mysql_error());

echo "yes";
}
}
?>