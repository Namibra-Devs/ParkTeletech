<?php require_once('./inc/header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['job_title'])) {
		$valid = 0;
		$error_message .= 'Job title can not be empty<br>';
	} else {
		// Duplicate job_category checking
    	// current job title that is in the database
    	$statement = $pdo->prepare("SELECT * FROM tbl_jobs WHERE job_id=?");
		$statement->execute(array($_REQUEST['id']));
		$result = $statement->fetchAll(PDO::FETCH_ASSOC);
		foreach($result as $row) {
			$current_job_title = $row['job_title'];
		}

		$statement = $pdo->prepare("SELECT * FROM tbl_jobs WHERE job_title=? and job_title!=?");
    	$statement->execute(array($_POST['job_title'],$current_job_title));
    	$total = $statement->rowCount();							
    	if($total) {
    		$valid = 0;
        	$error_message .= 'Job title already exists<br>';
    	}
	}

	if(empty($_POST['job_description'])) {
		$valid = 0;
		$error_message .= 'Job Description can not be empty<br>';
	}

	if($valid == 1) {

		$statement = $pdo->prepare("UPDATE tbl_jobs SET job_title=?, location=?, description=?, requirement=?, salary=?, benefits=?, more_info=?, job_category_id=? WHERE job_id=?");
	    	$statement->execute(array($_POST['job_title'], $_POST['location'],$_POST['job_description'], $_POST['job_requirement'],$_POST['salary'],$_POST['job_benefit'], $_POST['more_info'], $_POST['job_category_id'], $_REQUEST['id']));

	    $success_message = 'job is updated successfully!';
	}
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_jobs WHERE job_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Edit job</h1>
	</div>
	<div class="content-header-right">
		<a href="jobs.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_jobs WHERE job_id=?");
$statement->execute(array($_REQUEST['id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$job_title         = $row['job_title'];
	$location          = $row['location'];
	$job_description   = $row['description'];
	$job_requirement   = $row['requirement'];
	$salary            = $row['salary'];
	$benefit           = $row['benefits'];
	$more_info         = $row['more_info'];
	$job_category_id   = $row['job_category_id'];
}
?>

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
								<input type="text" class="form-control" name="job_title" placeholder="Example: job Headline" value="<?php echo $job_title?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Location <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="location" placeholder="Example: Kumasi, Ghana"value="<?php echo $location?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Description <span>*</span></label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="job_description"><?php echo $job_description?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Requirement </label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="job_requirement" ><?php echo $job_requirement ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Salary </label>
							<div class="col-sm-8">
								<textarea class="form-control" name="salary" ><?php $salary ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Job Benefit </label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="job_benefit" ><?php $benefit ?></textarea>
							</div>
						</div>		
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">More info </label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="more_info" ><?php $more_info ?></textarea>
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
											<option value="<?php echo $row['job_category_id']; ?>" <?php if($row['job_category_id'] = $job_category_id) {echo 'selected';} ?>><?php echo $row['job_category_name']; ?></option>
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