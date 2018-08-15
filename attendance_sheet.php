

						<ul	 id="da-thumbs" class="da-thumbs">
										<?php $query = mysql_query("
											select DISTINCT class_name,
															attendance_class_id,
															thumbnails from
												(
													select
														attendance_class_id,
														student_id,
														firstname,
														lastname
														from attendance_log
												) log
											LEFT join teacher_class a
											on log.attendance_class_id =a.class_id
											LEFT JOIN class b
											on log.attendance_class_id=b.class_id
											where a.teacher_id=$session_id
											")
										or die(mysql_error());
										$count = mysql_num_rows($query);

										if ($count > 0){
										while($row = mysql_fetch_array($query)){

										$name = $row['attendance_class_id'];
										?>
											<li id="del<?php echo $id; ?>">
												<a href="print_attendance.php<?php echo '?id='.$id .'&&name='.$name; ?>">
													<img src ="<?php echo $row['thumbnails'] ?>" width="124" height="140" class="img-polaroid" alt="">
													<div>
													<span><p><?php echo $row['class_name']; ?></p></span>
													</div>
												</a>

												<!-- <p class="class"><?php echo $row['class_name']; ?></p>
												<p class="subject"><?php echo $row['attendance_subject_id']; ?>
												<a href="#<?php echo $id; ?>" data-toggle="modal"><i class="icon-trash"></i> Remove</a>
											 -->
											</li>
										<?php include("delete_attendance_modal.php"); ?>
									<?php } }else{ ?>
									<div class="alert alert-info"><i class="icon-info-sign"></i> No Available Attendance</div>
									<?php  } ?>
									</ul>
