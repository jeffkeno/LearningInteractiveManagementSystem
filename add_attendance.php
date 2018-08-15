<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_attendance_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
									<ul class="breadcrumb">
										<?php
										$school_year_query = mysql_query("select * from school_year order by school_year DESC")or die(mysql_error());
										$school_year_query_row = mysql_fetch_array($school_year_query);
										$school_year = $school_year_query_row['school_year'];
										?>
											<li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
										<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider">/</span></li>
										<li><a href="#"><b>Quiz</b></a></li>
									</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									<div class="pull-right">
									<a href="teacher_attendance.php" class="btn btn-info"><i class="icon-arrow-left"></i> Back</a>
									</div>
								
									    <form class="form-horizontal" method="post">
										<div class="control-group">
											<label class="control-label" for="inputAttendance">Attendance Name</label>
											<div class="controls">
											<input type="text" name="attendance_name" id="attendance_name" placeholder="Attendance Name - Date" >
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputAttendance">Class Name:</label>
                                          <div class="controls">
											<input type="hidden" name="session_id" value="<?php echo $session_id; ?>">
                                            <select name="class_id"  class="" required>
                                             	<option></option>
											<?php
											$query = mysql_query("select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_id = '$session_id' ");
											while($row = mysql_fetch_array($query)){
											
											?>
											<option value="<?php echo $row['class_id']; ?>"><?php echo $row['class_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
										
										<div class="control-group">
											<label class="control-label" for="inputEmail">Subject:</label>
                                        <div class="controls">
                                            <select name="subject_id"  class="" required>
                                             	<option></option>
											<?php
											$query = mysql_query("select * from subject order by subject_code");
											while($row = mysql_fetch_array($query)){
											
											?>
											<option value="<?php echo $row['subject_id']; ?>"><?php echo $row['subject_code']; ?></option>
											<?php } ?>
                                            </select>
                                        </div>
                                    </div>
										
										<div class="controls">										
										<button name="save" type="submit" class="btn btn-success"><i class="icon-save"></i> Save</button>
										</div>
										</div>
										</form>									
										<?php
										
										if (isset($_POST['save']))
{										$class_id = $_POST['class_id'];
										$subject_id=$_POST['subject_id'];
										$attendance_name = $_POST['attendance_name'];
										$query = mysql_query("
											select * from teacher_class a
											inner join teacher_class_student b 
											on a.teacher_class_id=b.teacher_class_id
											 where a.teacher_id=$session_id and (class_id=$class_id or subject_id=$subject_id);
											");
										$teacher_row = mysql_fetch_array($query);
										$teacher_id = $teacher_row['teacher_class_id'];


										mysql_query("insert into attendance_log(attendance_name,attendance_teacher_class_id,attendance_class_id,attendance_subject_id,attendance_date)
										 values('$attendance_name','$teacher_id','$class_id','$subject_id',now())")or die(mysql_error());
										?>
										<script>
										var delay = 1500;
										setTimeout(function(){ window.location = 'teacher_attendance.php'  }, delay);  </script>
										<?php
										}
										?>							
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>