	<?php include('dbcon.php'); ?>
			<div class="row-fluid">
                        
			<!-- block -->
								
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><h4>Add class</h4></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
									
	                                  <div class="control-group">
											<label>Teacher Name:</label>
                                          <div class="controls">
											<input type="hidden" name="teacher_id" value="<?php echo $teacher_id; ?>">
                                            <select name="class_id"  class="" required>
                                             	<option></option>
											<?php
											$query = mysql_query("select * from teacher order by firstname and lastname");
											while($row = mysql_fetch_array($query)){
											
											?>
											<option value="<?php echo $row['teacher_id']; ?>"><?php echo $row['firstname']; ?>&nbsp;<?php echo $row['lastname']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
										

									<div class="control-group">
											<label>Class Name:</label>
                                          <div class="controls">
											<input type="hidden" name="class_id" value="<?php echo $class_id; ?>">
                                            <select name="class_id"  class="" required>
                                             	<option></option>
											<?php
											$query = mysql_query("select * from class order by class_name");
											while($row = mysql_fetch_array($query)){
											
											?>
											<option value="<?php echo $row['class_id']; ?>"><?php echo $row['class_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
										
										<div class="control-group">
											<label>Subject:</label>
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
										
										<div class="control-group">
											<label>School Year:</label>
                                          <div class="controls">
											<?php
											$query = mysql_query("select * from school_year order by school_year DESC");
											$row = mysql_fetch_array($query);
											?>
											<input id="" class="span5" type="text" class="" name="school_year" value="<?php  echo $row['school_year']; ?>" >
                                          </div>
                                        </div>
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-success"><i class="icon-save"></i> Save</button>
                                          </div>
                                        </div>
										
										    <div class="row-fluid">
            	<a id="clear" href = "session_clear.php" onclick="alert('Sessions Cleared')"  class="btn btn-success"><i class="icon-trash"></i> Clear Sessions All Account</a>
                     
                  </div>
                                </form>
								<?php
								 if (isset($_POST['save'])) {
								$teacher_id = 'NA';
								$subject_id = 'NA';
								$class_id = 'NA';
								$school_year = 'NA';
								$query = mysql_query("select * from teacher_class LEFT JOIN teacher ON teacher.teacher_id = teacher_class.teacher_id and 
                                                  LEFT JOIN class ON  class.class_id = teacher_class.class_id 
												  LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id WHERE school_year = '$school_year'")or die(mysql_error());
								$count = mysql_num_rows($query);
								
								?>
								<?php
								if ($count > 0){ 	?>		
                                <script>
								alert('Data Already Exist');
								</script> 
								<?php}else{
							mysql_query("insert into teacher_class (teacher_id,class_id,subject_id,thumbnails,school_year) values('$teacher_id','$class_id','$subject_id','admin/uploads/thumbnails.jpg','$school_year'")or die(mysql_error());

							$teacher_class = mysql_query("select * from teacher_class  LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id order by teacher_class_id DESC")or die(mysql_error());
							$teacher_row = mysql_fetch_array($teacher_class);
							$teacher_id2 = $teacher_row['teacher_class_id'];


							$insert_query = mysql_query("select * from student  LEFT JOIN class ON class.class_id = student.class_id 
                                                     LEFT JOIN student ON  student.student_id = teacher_class_student.student_id where class_id = '$class_id'")or die(mysql_error());
							while($row = mysql_fetch_array($insert_query)){
							$id = $row['student_id'];
							mysql_query("insert into teacher_class_student (teacher_class_id,student_id,teacher_id) values('$teacher_id2','$id','$teacher_id')")or die(mysql_error());
							echo "yes";
							}} ?>
								<script>
							 	window.location = "dashboard.php"; 
								</script>
								
						<?php   ?>
						 

								</div>
                            </div>
                        </div>
                    