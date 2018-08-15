<?php
		include('admin/dbcon.php');
		if (session_status() === PHP_SESSION_NONE){session_start();}
		$username = $_POST['username'];
		$password = $_POST['password'];
		//get client ip address for session checking
		$ipaddress = $_SERVER['REMOTE_ADDR'];

		/* session check */
			$session_query = "SELECT * FROM sessions WHERE user_id IN ('$ipaddress')";
			$session_result = mysql_query($session_query)or die(mysql_error());
			$session_num_row = mysql_num_rows($session_result);

		/* student */
			$query = "SELECT * FROM student WHERE BINARY username='$username' AND password='$password'";
			$result = mysql_query($query)or die(mysql_error());
			$row = mysql_fetch_array($result);
			$num_row = mysql_num_rows($result);
		/* teacher */
		$query_teacher = mysql_query("SELECT * FROM teacher WHERE BINARY username='$username' AND password='$password'")or die(mysql_error());
		$num_row_teacher = mysql_num_rows($query_teacher);
		$row_teahcer = mysql_fetch_array($query_teacher);

		if($session_num_row == 0){
		if( $num_row > 0 ) {
		//set session data for student
		$_SESSION['id']=$row['student_id'];
		$_SESSION['firstname'] = $row['firstname'];


		echo 'true_student';
		$class_id = $row['class_id'];
		$student_id = $row['student_id'];
		$firstname = $row['firstname'];
		$lastname = $row['lastname'];
		$student_log = mysql_query("insert into attendance_log(attendance_class_id,student_id,firstname,lastname,attendance_date)
 			values('$class_id','$student_id','$firstname','$lastname',now())")or die(mysql_error());


		}else if ($num_row_teacher > 0){
		$_SESSION['id']=$row_teahcer['teacher_id'];
		echo 'true';

			 }else{
					echo 'false';
			}
		}else{
			echo 'logged';
		}
		?>
