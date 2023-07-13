<?php require_once('./inc/header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['name'])) {
		$valid = 0;
		$error_message .= 'Name can not be empty<br>';
	}

	if(empty($_POST['description'])) {
		$valid = 0;
		$error_message .= 'Description can not be empty<br>';
	}

	if(empty($_POST['short_description'])) {
		$valid = 0;
		$error_message .= 'Short Description can not be empty<br>';
	}


	if($valid == 1) {

		// getting auto increment id
		$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_expertise'");
		$statement->execute();
		$result = $statement->fetchAll();
		foreach($result as $row) {
			$ai_id=$row[10];
		}


		$statement = $pdo->prepare("INSERT INTO tbl_expertise (name,description,short_description) VALUES (?,?,?)");
		$statement->execute(array($_POST['name'],$_POST['description'],$_POST['short_description']));
			
		$success_message = 'expertise is added successfully!';

		unset($_POST['name']);
		unset($_POST['description']);
		unset($_POST['short_description']);
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add expertise</h1>
	</div>
	<div class="content-header-right">
		<a href="expertise.php" class="btn btn-primary btn-sm">View All</a>
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
							<label for="" class="col-sm-2 control-label">Name <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="name" value="<?php if(isset($_POST['name'])){echo $_POST['name'];} ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Description <span>*</span></label>
							<div class="col-sm-9">
								<textarea class="form-control editor" name="description"><?php if(isset($_POST['description'])){echo $_POST['description'];} ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Short Description <span>*</span></label>
							<div class="col-sm-9">
								<textarea class="form-control" name="short_description" style="height:140px;"><?php if(isset($_POST['short_description'])){echo $_POST['short_description'];} ?></textarea>
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