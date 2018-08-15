<?php 
										
										
										
										
										if(isset($_POST['save']) ){
											
								
											$status = $_POST['status'];
											$firstname     =	$_POST['firstname'];
											$attendance_name =  $row['attendance_name'];
										  	$lastname      =	$row['lastname'];
										    $subject_code  =	$row['subject_code']; 
										    $attendance_date  =	$row['attendance_date'];
										    $student_id    =    $row['student_id'];
										    
										    
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
												 
											echo "Successfully added";
										}else
										{
										
										}
										
										?>