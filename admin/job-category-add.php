<?php require_once('./inc/header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['job_category_name'])) {
        $valid = 0;
        $error_message .= "job_category Name can not be empty<br>";
    } else {
    	// Duplicate job_category checking
    	$statement = $pdo->prepare("SELECT * FROM tbl_job_category WHERE job_category_name=?");
    	$statement->execute(array($_POST['job_category_name']));
    	$total = $statement->rowCount();
    	if($total)
    	{
    		$valid = 0;
        	$error_message .= "job_category Name already exists<br>";
    	}
    }

    if($valid == 1) {

    	// Getting auto increment id for this job_category
		$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_job_category'");
		$statement->execute();
		$result = $statement->fetchAll();
		foreach($result as $row) {
			$ai_id=$row[10];
		}
    	
		// Saving data into the main table tbl_job_category
		$statement = $pdo->prepare("INSERT INTO tbl_job_category (job_category_name) VALUES (?)");
		$statement->execute(array($_POST['job_category_name']));
	
    	$success_message = 'job_category is added successfully.';
    }
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add job_category</h1>
	</div>
	<div class="content-header-right">
		<a href="job-category.php" class="btn btn-primary btn-sm">View All</a>
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

			<form class="form-horizontal" action="" method="post">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">job_category Name <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="job_category_name" placeholder="Example: Construction">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
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