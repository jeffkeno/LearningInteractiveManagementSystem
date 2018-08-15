<?php
include('dbcon.php');
        
               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $class_id = $_POST['class_id'];

            $validate_uname = mysql_query("SELECT username FROM student WHERE username='$un' and class_id = '$class_id' ");

              if (mysql_num_rows($validate_uname) == 0)
                {
               mysql_query("insert into student (username,firstname,lastname,location,class_id,status)
              values ('$un','$fn','$ln','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Unregistered')") or die(mysql_error()); 
            }
			
	
    ?>
