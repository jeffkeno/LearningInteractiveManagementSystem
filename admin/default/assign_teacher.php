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
								
															
            <script>
			jQuery(document).ready(function($){
				$("#assign_teacher").submit(function(e){
					e.preventDefault();
					var _this = $(e.target);
					var formData = $(this).serialize();
					$.ajax({
						type: "POST",
						url: "assign_teacher_action.php",
						data: formData,
						success: function(html){
						if(html=="true")
						{
						$.jGrowl("Class Already Exist", { header: 'Add Class Failed' });
						}else{
							$.jGrowl("Classs Successfully  Added", { header: 'Class Added' });
							var delay = 500;
							setTimeout(function(){ window.location = 'dashboard.php'  }, delay);  
						}
						}
					});
				});
			});
			</script>		

						

								</div>
                            </div>
                        </div>
                        <!-- /block -->

						

								</div>
                            </div>
                        </div>
                        <!-- /block -->