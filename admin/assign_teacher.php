				<!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"><h4><i class="icon-plus-sign"></i> Add class</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post" id="assign_teacher">
									
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
										$teacher_id1 = $_POST['teacher_id'];
 											$subject_id1 = $_POST['subject_id'];
											$class_id1 = $_POST['class_id'];
											$school_year1 = $_POST['school_year'];
											$query = mysql_query("select * from teacher_class where teacher_id = '$teacher_id1' and subject_id = '$subject_id1' and class_id = '$class_id1' and school_year = '$school_year1' ")or die(mysql_error());
											$count = mysql_num_rows($query);
										
										  
			  if ($count > 0) { ?>
			
				  <script>
				  alert('Data Already Exist');
				  </script>
										
				 <?php		
				 } else{
					 mysql_query("insert into teacher_class (teacher_id,subject_id,class_id,thumbnails,school_year) values('$teacher_id1','$subject_id1','$class_id1','admin/uploads/thumbnails.jpg','$school_year1')")or die(mysql_error());
                    
					$teacher_class = mysql_query("select * from teacher_class order by teacher_class_id DESC")or die(mysql_error());
                     $teacher_row = mysql_fetch_array($teacher_class);
                     $teacher_id2 = $teacher_row['teacher_class_id'];
					 
					 
					$insert_query = mysql_query("select * from student where class_id = '$class_id2'")or die(mysql_error());
					while($row = mysql_fetch_array($insert_query)){
					$id = $row['student_id'];
					mysql_query("insert into teacher_class_student (teacher_id,student_id,teacher_class_id) value('$teacher_id1','$id','$teacher_id2')")or die(mysql_error());
					}?>
					<script>
					window.location = "dashboard.php";
					</script>

					 
								<?php	}	  
										
									}			


						       ?>

								</div>
                            </div>
                        </div>
                        <!-- /block -->

						
