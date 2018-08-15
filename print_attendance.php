<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<?php $get_name = $_GET['name']; ?>
	 <body>

	<?php include('navbar_teacher.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
			<?php include('teacher_attendance_sidebar.php'); ?>
            <div class="span9" id="content">
                 <div class="row-fluid">



					<div class="pull-right">
						<a id="print" onclick="window.print()"  class="btn btn-success"><i class="icon-print"></i> Print Student List</a>
					</div>

					<?php include('my_students_breadcrums.php'); ?>
                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-right">
															 <form action="print_attendance.php" method="GET">
																  
																	 <input type="date" name="date_filter" <?php if(isset($_GET['date_filter'])){ ?> value="<?php echo $_GET['date_filter']; ?>" <?php }?>></br>
																	 <input type="submit" class="btn btn-success">
																	 <input type="hidden" name="id" value="<?php echo $get_id; ?>">
																	 <input type="hidden" name="name" value="<?php echo $get_name; ?>">
																</form>
															</div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">

						<table cellpadding="0" cellspacing="0" border="0" class="table" id="">

				<thead>

				        <tr>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Class Name</th>
						<th>Last Login</th>
						</tr>


				</thead>
				<tbody>
						<?php



						if(isset($_GET['date_filter'])){

							$date_filter = $_GET['date_filter'];

							$my_student = mysql_query("select max(attendance_date) attendance_date,
								b.class_name,
								a.student_id,
								firstname,
								lastname
								from attendance_log a
								inner join class b
								on a.attendance_class_id = b.class_id
																		inner join teacher_class_student c
																		on a.student_id = c.student_id
																		where b.class_id = '$get_name'
																		and date_format(attendance_date, '%Y-%m-%d') = '$date_filter'
								group by firstname
								order by attendance_date desc")or die(mysql_error());
						while($row = mysql_fetch_array($my_student)){
					/*	$id = $row['teacher_class_student_id'];
						$name=$row['attendance_name'];*/

						?>


						<tr id="del<?php echo $id; ?>">
							<form action="print_attendance_save.php" class="form-horizontal" method="POST">
								<input type='hidden' name="student_id" value="<?php  echo $row['student_id']; ?>">
								<input type='hidden' name="attendance_name" value="<?php  echo $row['attendance_name']; ?>">
												 <td><?php  echo $row['firstname']; ?><input type='hidden' name="firstname" value="<?php echo $row['firstname']; ?>"></td>
								 <td><?php  echo $row['lastname']; ?><input type='hidden' name="lastname" value="<?php echo $row['lastname']; ?>"></td>
												 <td><?php  echo $row['class_name']; ?><input type='hidden' name="class_name" value="<?php  echo $row['class_name']; ?>"></td>
								 <td><?php 	echo $row['attendance_date']; ?><input type='hidden' name="attendance_date" value="<?php  echo $row['attendance_date']; ?>"></td>

								</tr>
								<?php
							}

						}else{
									$my_student = mysql_query("select max(attendance_date) attendance_date,
										b.class_name,
										a.student_id,
										firstname,
										lastname
										from attendance_log a
										inner join class b
										on a.attendance_class_id = b.class_id
                                        inner join teacher_class_student c
                                        on a.student_id = c.student_id
                                        where b.class_id = '$get_name'
																				and date_format(attendance_date, '%Y-%m-%d') = curdate()
										group by firstname
										order by attendance_date desc")or die(mysql_error());
								while($row = mysql_fetch_array($my_student)){
							/*	$id = $row['teacher_class_student_id'];
								$name=$row['attendance_name'];*/

								?>


				<tr id="del<?php echo $id; ?>">
					<form action="print_attendance_save.php" class="form-horizontal" method="POST">
						<input type='hidden' name="student_id" value="<?php  echo $row['student_id']; ?>">
						<input type='hidden' name="attendance_name" value="<?php  echo $row['attendance_name']; ?>">
		                 <td><?php  echo $row['firstname']; ?><input type='hidden' name="firstname" value="<?php echo $row['firstname']; ?>"></td>
						 <td><?php  echo $row['lastname']; ?><input type='hidden' name="lastname" value="<?php echo $row['lastname']; ?>"></td>
		                 <td><?php  echo $row['class_name']; ?><input type='hidden' name="class_name" value="<?php  echo $row['class_name']; ?>"></td>
						 <td><?php 	echo $row['attendance_date']; ?><input type='hidden' name="attendance_date" value="<?php  echo $row['attendance_date']; ?>"></td>

        		</tr>
        		<?php
					}
				}
					?>

				</tbody>
			</table>

						<!-- <div class="controls">
					<button name="save" type="submit" class="btn btn-success"><i class="icon-save"></i> Save</button>
					</div>	 -->
					</form>


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
