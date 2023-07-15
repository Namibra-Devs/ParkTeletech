<?php require_once('./inc/header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['job_title'])) {
		$valid = 0;
		$error_message .= 'Job title can not be empty<br>';
	} else {
		// Duplicate Checking
    	$statement = $pdo->prepare("SELECT * FROM tbl_jobs WHERE job_title=?");
    	$statement->execute(array($_POST['job_title']));
    	$total = $statement->rowCount();
    	if($total) {
    		$valid = 0;
        	$error_message .= "Job title already exists<br>";
    	}
	}

	if(empty($_POST['job_description'])) {
		$valid = 0;
		$error_message .= 'Job Description can not be empty<br>';
	}


	if(empty($_POST['location'])) {
		$valid = 0;
		$error_message .= 'Job location can not be empty<br>';
	}

	// if(empty($_POST['job_category_id'])) {
	// 	$valid = 0;
	// 	$error_message .= 'You must have to select a Job Category<br>';
	// }
	

	if($valid == 1) {

		// getting auto increment id for photo renaming
		$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_jobs'");
		$statement->execute();
		$result = $statement->fetchAll();
		foreach($result as $row) {
			$ai_id=$row[10];
		}

			// When no photo will be selected
			$statement = $pdo->prepare("INSERT INTO tbl_jobs (job_title, location,description,requirement, salary, benefits, more_info, job_category_id) VALUES (?,?,?,?,?,?,?,?)");
			$statement->execute(array($_POST['job_title'], $_POST['location'], $_POST['job_description'],$_POST['job_requirement'],$_POST['salary'],$_POST['job_benefit'], $_POST['more_info'],$_POST['job_category_id']));
	
		$success_message = 'Job is added successfully!';

		unset($_POST['job_title']);
		unset($_POST['location']);
		unset($_POST['job_description']);
		unset($_POST['job_requirement']);
		unset($_POST['salary']);
		unset($_POST['job_benefit']);
		unset($_POST['more_info']);
		unset($_POST['job_category_id']);
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add job</h1>
	</div>
	<div class="content-header-right">
		<a href="jobs.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>


<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if($error_message): ?>
			<div class="callout callout-danger">
				<p>
				<?php echo $error_message; ?>
				</p>
			</div>
			<?php endif; ?>

			<?php if($success_message): ?>
			<div class="callout callout-success">
				<p><?php echo $success_message; ?></p>
			</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Title <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="job_title" placeholder="Example: job Headline" value="<?php if (isset($_POST['job_title'])) { echo $_POST['job_title'];} ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Location <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="location" placeholder="Example: Kumasi, Ghana" value="<?php if (isset($_POST['location'])) { echo $_POST['location'];} ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Description <span>*</span></label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="job_description"><?php if (isset($_POST['job_description'])) { echo $_POST['job_description'];} ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Requirement </label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="job_requirement" ><?php if (isset($_POST['job_requirement'])) { echo $_POST['job_requirement'];} ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Salary </label>
							<div class="col-sm-8">
								<textarea class="form-control" name="salary" ><?php if (isset($_POST['salary'])) { echo $_POST['salary'];} ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Benefit </label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="job_benefit" ><?php if (isset($_POST['job_benefit'])) { echo $_POST['job_benefit'];} ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">More info </label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="more_info" ><?php if (isset($_POST['more_info'])) { echo $_POST['more_info'];} ?></textarea>
							</div>
						</div>		
						<div class="form-group">
				            <label for="" class="col-sm-3 control-label">Select job_category <span>*</span></label>
				            <div class="col-sm-3">
				            	<select class="form-control select2" name="job_category_id">
				            		<option value="">Select Job Category</option>
				            		<?php
						            	$i=0;
						            	$statement = $pdo->prepare("SELECT * FROM tbl_job_category ORDER BY job_category_name ASC");
						            	$statement->execute();
						            	$result = $statement->fetchAll();
						            	foreach ($result as $row) {
						            		?>
											<option value="<?php echo $row['job_category_id']; ?>"><?php echo $row['job_category_name']; ?></option>
						            		<?php
						            	}
					            	?>
				            	</select>
				            </div>
				        </div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Submit</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</section>

<?php require_once('./inc/footer.php'); ?>