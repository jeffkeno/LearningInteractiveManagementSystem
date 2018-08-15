<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body id="class_div">
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_attendance_sidebar.php'); ?>
                <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php

								$my_student		       = mysql_query("select * from teacher_class where teacher_id='$session_id'")or die(mysql_error());
								$school_year_query     = mysql_query("select * from school_year order by school_year DESC")or die(mysql_error());
								$school_year_query_row = mysql_fetch_array($school_year_query);
								$school_year 		   = $school_year_query_row['school_year'];
								while($row = mysql_fetch_array($my_student)){
														$id = $row['teacher_class_id'];
									}
								?>
								<li><a href="#"><b>Attendance</b></a><span class="divider">/</span></li>
								<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a></li>
				
						</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                  

							
                        <div class="block">
                         <div class="block-content collapse in">
                                <div class="span15">
								<!-- 	<div class="pull-left">
									<a href="add_attendance.php<?php echo '?id='.$id ; ?>" class="btn btn-info"><i class="icon-plus-sign"></i>Add Attendance</a>
									
									</div> -->

								<div class="navbar navbar-inner block-header">
									<div id="count_class" class="muted pull-right"></div>

								</div>
                            <div class="block-content collapse in">
                                <div class="span12">
										<?php include('attendance_sheet.php'); ?>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
									<script type="text/javascript">
									$(document).ready( function() {
										$('.remove').click( function() {
										var id = $(this).attr("id");
											$.ajax({
											type: "POST",
											url: "delete_attendance.php",
											data: ({id: id}),
											cache: false,
											success: function(html){
											$("#del"+id).fadeOut('slow', function(){ $(this).remove();}); 
											$('#'+id).modal('hide');
											$.jGrowl("Your Attendance is Successfully Deleted", { header: 'Attendance Delete' });
											}
											}); 	
											return false;
										});				
									});
									</script>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>