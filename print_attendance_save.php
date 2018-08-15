<?php

 include('header_dashboard.php');
		if(isset($_POST['save']) ){
											
			
						$status = $_POST['status'];
						$firstname     =	$_POST['firstname'];
						$attendance_name =  $_POST['attendance_name'];
					  	$lastname      =	$_POST['lastname'];
					    $subject_code  =	$_POST['subject_code']; 
					    $attendance_date  =	$_POST['attendance_date'];
					    $student_id    =    $_POST['student_id'];
					    
					    
							mysql_query("insert into attendance_student
								   (student_id,
									firstname,
									lastname,
									attendance_name,
									attendance_date,
									status)
							 values( '$student_id',
									 '$firstname',
									 '$lastname',
									 '$attendance_name',
									 '$attendance_date',
									 '$status') ")or die(mysql_error());
							 
						echo "Successfully added! </br>" ;
					}else
					echo "No data sent! </br>";
						
?>

<html>
   <head>
   
      <script type="text/javascript">
         <!--
            function Redirect() {
               window.location="/lms/teacher_attendance.php";
            }
            
            document.write("You will be redirected to the attendance page.");
            setTimeout('Redirect()', 3000);
         //-->
      </script>
      
   </head>
   
   <body>
   </body>
</html>