<?php
include('dbcon.php');

$teacher_id = $_POST['teacher_id'];
$subject_id = $_POST['subject_id'];
$class_id = $_POST['class_id'];
$school_year = $_POST['school_year'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$query = mysql_query("select * from teacher_class where teacher_id = '$teacher_id' and class_id = '$class_id' and subject_id = '$subject_id' and school_year = '$school_year' and firstname ='$firstname' and lastname ='$lastname'")or die(mysql_error());
$count = mysql_num_rows($query);
if ($count > 0){ 
echo "true";
}else{

mysql_query("insert into teacher_class (teacher_id,class_id,subject_id,thumbnails,school_year,firstname,lastname) values('$teacher_id','$class_id','$subject_id','admin/uploads/thumbnails.jpg','$school_year','$firstname','$lastname'")or die(mysql_error());

$teacher_class = mysql_query("select * from teacher_class order by teacher_class_id DESC")or die(mysql_error());
$teacher_row = mysql_fetch_array($teacher_class);
$teacher_id2 = $teacher_row['teacher_class_id'];


$insert_query = mysql_query("select * from student where class_id = '$class_id'")or die(mysql_error());
while($row = mysql_fetch_array($insert_query)){
$id = $row['student_id'];
mysql_query("insert into teacher_class_student (teacher_id,student_id,teacher_class_id) value('$teacher_id','$id','$teacher_id2')")or die(mysql_error());
echo "yes";
}
}

?>