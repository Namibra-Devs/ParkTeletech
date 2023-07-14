<?php require_once('./inc/header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['title'])) {
		$valid = 0;
		$error_message .= 'title can not be empty<br>';
	}

	if(empty($_POST['content'])) {
		$valid = 0;
		$error_message .= 'content can not be empty<br>';
	}

	if(empty($_POST['short_content'])) {
		$valid = 0;
		$error_message .= 'Short content can not be empty<br>';
	}
	
    $path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path!='') {
        $ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
            $valid = 0;
            $error_message .= 'You must have to upload jpg, jpeg, gif or png file for Featured Photo<br>';
        }
    }

	if($valid == 1) {

		$statement = $pdo->prepare("SELECT * FROM tbl_why_us WHERE id=?");
		$statement->execute(array($_REQUEST['id']));
		$result = $statement->fetchAll(PDO::FETCH_ASSOC);
		foreach($result as $row) {
			$current_name = $row['title'];
		}


		if($path == '' && $path1 == '') {
			$statement = $pdo->prepare("UPDATE tbl_why_us SET name=?, content=? WHERE id=?");
    		$statement->execute(array($_POST['name'], $_POST['content'], $_REQUEST['id']));
		}
		// if($path != '' && $path1 == '') {
		// 	unlink('../assets/uploads/why_us/'.$_POST['current_photo']);

		// 	$final_name = 'why_us-'.$_REQUEST['id'].'.'.$ext;
        // 	move_uploaded_file( $path_tmp, '../assets/uploads/why_us/'.$final_name );

        // 	$statement = $pdo->prepare("UPDATE tbl_why_us SET name=?, slug=?, content=?, short_content=?, photo=?, meta_title=?, meta_keyword=?, meta_content=? WHERE id=?");
    	// 	$statement->execute(array($_POST['name'],$slug,$_POST['content'],$_POST['short_content'],$final_name,$_POST['meta_title'],$_POST['meta_keyword'],$_POST['meta_content'],$_REQUEST['id']));
		// }
		// if($path == '' ) {
		// 	unlink('../assets/uploads/why_us/'.$_POST['current_banner']);

		// 	$final_name1 = 'why_us-banner-'.$_REQUEST['id'].'.'.$ext1;
        // 	move_uploaded_file( $path_tmp1, '../assets/uploads/why_us/'.$final_name1 );

        // 	$statement = $pdo->prepare("UPDATE tbl_why_us SET name=?, slug=?, content=?, short_content=?, banner=?, meta_title=?, meta_keyword=?, meta_content=? WHERE id=?");
    	// 	$statement->execute(array($_POST['name'],$slug,$_POST['content'],$_POST['short_content'],$final_name1,$_POST['meta_title'],$_POST['meta_keyword'],$_POST['meta_content'],$_REQUEST['id']));
		// }
		if($path != '') {

			unlink('../assets/uploads/why_us/'.$_POST['current_photo']);

			$final_name = 'why_us-'.$_REQUEST['id'].'.'.$ext;
        	move_uploaded_file( $path_tmp, '../assets/uploads/why_us/'.$final_name );


        	$statement = $pdo->prepare("UPDATE tbl_why_us SET name=?, content=?, photo=? WHERE id=?");
    		$statement->execute(array($_POST['title'], $_POST['content'],$final_name, $_REQUEST['id']));
		}

		$success_message = 'why_us is updated successfully!';
	}
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_why_us WHERE id=?");
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
		<h1>Edit</h1>
	</div>
	<div class="content-header-right">
		<a href="why_us.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_why_us WHERE id=?");
$statement->execute(array($_REQUEST['id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$title              = $row['title'];
	$content       = $row['content'];
	$photo             = $row['photo'];
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
				<input type="hidden" name="current_photo" value="<?php echo $photo; ?>">
				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">title <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="title" value="<?php echo $title; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">content <span>*</span></label>
							<div class="col-sm-9">
								<textarea class="form-control editor" name="content"><?php echo $content; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Existing Photo</label>
							<div class="col-sm-9" style="padding-top:5px">
								<img src="../assets/uploads/why_us/<?php echo $photo; ?>" alt="why_us Photo" style="width:400px;">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Photo </label>
							<div class="col-sm-6" style="padding-top:5px">
								<input type="file" name="photo">(Only jpg, jpeg, gif and png are allowed)
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