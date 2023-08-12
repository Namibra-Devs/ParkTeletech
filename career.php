<?php
include('header.php')
?>

<?php
if (isset($_POST['application-submit'])) {
    $valid = 1;
    $error_message = '';
    $success_message = '';

    $path = $_FILES['cv']['name'];
    $path_tmp = $_FILES['cv']['tmp_name'];

    if (empty($_POST['name'])) {
        $valid = 0;
        $error_message .= 'Name field is empty';
    };

    if (empty($_POST['email'])) {
        $valid = 0;
        $error_message .= 'Email field is empty';
    } else {
        if (!(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))) {
            $valid = 0;
            $error_message .= 'email must be in the form example@example.com';
        }
    };
    

    if($error_message != '') {
        echo "<script>alert('".$error_message."')</script>";
    }
    if($success_message != '') {
        echo "<script>alert('".$success_message."')</script>";
    }

    if ($path != '') {
        $ext = pathinfo($path, PATHINFO_EXTENSION);
        $file_name = basename($path, '.' . $ext);
        if ($ext != 'pdf') {
            $valid = 0;
            $error_message .= 'Your file must be in a pdf format<br>';
        }
    } else {
        $valid = 0;
        $error_message .= 'You must have to upload your CV/Resume<br>';
    }

    // if ($valid == 1) {

    //     // getting auto increment id
    //     $statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_slider'");
    //     $statement->execute();
    //     $result = $statement->fetchAll();
    //     foreach ($result as $row) {
    //         $ai_id = $row[10];
    //     }


    //     $final_name = 'slider-' . $ai_id . '.' . $ext;
    //     move_uploaded_file($path_tmp, '../assets/uploads/slider/' . $final_name);


    //     $statement = $pdo->prepare("INSERT INTO tbl_slider (photo,heading,content,button_text,button_url,position,status) VALUES (?,?,?,?,?,?,?)");
    //     $statement->execute(array($final_name, $_POST['heading'], $_POST['content'], $_POST['button_text'], $_POST['button_url'], $_POST['position'], $_POST['status']));

    //     $success_message = 'Slider is added successfully!';
    // }
}
?>
<section class="services">
    <div class="title">
        <h1>OUR CAREERS</h1>
        <div class="underline"></div>
    </div>
    <div class="services_container">
        <?php
        $statement = $pdo->prepare("SELECT page_name, page_content, photo FROM tbl_page WHERE page_id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);

        foreach ($result as $row) {
        ?>
            <div class="service-box">
                <div class="service-text">
                    <!-- <h2>Cell Tower Installation</h2> -->
                    <p><?php echo $row['page_content'] ?></p>
                </div>
                <div class="service-img">
                    <img src="./assets/uploads/<?php echo $row['photo'] ?>" alt="">
                </div>
            </div>
        <?php
        }
        ?>

        <div class="career-container">
            <div class="service-img">
                <h2>Why Work with Us</h2>
                <img src="img/career8.png" style="height: 30rem;" alt="">
            </div>
            <div class="career-details">

                <?php
                $statement = $pdo->prepare("SELECT title, content, photo FROM tbl_why_us");
                $statement->execute();
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);

                foreach ($result as $row) {
                ?>
                    <div class="career-box">
                        <img src="./assets/uploads/why_us/<?php echo $row['photo'] ?>" alt="">
                        <h3> <?php echo $row['title'] ?></h3>
                        <p> <?php echo $row['content'] ?></p>
                    </div>
                <?php
                }
                ?>
            </div>
        </div>
    </div>

</section>
<section class="position">
    <div class="title">
        <h1>OPEN POSITION</h1>
        <div class="underline"></div>
    </div>
    <div class="application">
        <div class="contact-details application-form">
            <div class="form">
                <span class="close-form">
                    <i class="fas fa-window-close"></i>
                </span>
                <h3>Job Application for Construction Engineer</h3>
                <form action="" method="post">
                    <label for="">Name</label>
                    <input type="text" name="" id="">
                    <label for="">Email</label>
                    <input type="email" name="" id="">
                    <label for="">CV/Resume</label>
                    <label for="" class="label">
                        <img src="img/mdi_cloud-upload-outline.png" alt="">
                        <h4>upload CV/Resume</h4>
                        <p>File should be in pdf</p>
                        <input type="file" name="cv" id="upload" accept=".pdf">
                    </label>
                    <input class="submit-application" name="application-submit" type="submit" value="Send Application">
                    <!-- <button type="submit">Send Application</button> -->
                </form>
            </div>
        </div>
    </div>
    <!-- ==========================ACCORDION============================ -->
    <div class="questions">
        <!-- Questions -->
        <div class="section-center" data-aos="zoom-in">
            <?php
            $statement = $pdo->prepare("SELECT job_id, job_title, location, description, requirement, salary, benefits, more_info FROM tbl_jobs");
            $statement->execute();
            $result = $statement->fetchAll(PDO::FETCH_ASSOC);

            foreach ($result as $row) {
            ?>
                <article class="question">
                    <div class="question-title">
                        <h3> <?php echo $row['job_title'] ?></h3>
                        <button type="button" class="question-btn">
                            <span class="plus-icon">
                                <i class="fa fa-angle-up"></i>
                            </span>
                            <span class="minus-icon">
                                <i class="fa fa-angle-down"></i>
                            </span>
                        </button>
                    </div>
                    <div class="question-text">
                        <h3><i class="fa fa-location-dot"></i><?php echo $row['location'] ?></h3>
                        <h4>Job Description</h4>
                        <p> <?php echo $row['description'] ?></p>
                        <h4>Job Requirement</h4>
                        <p> <?php echo $row['requirement'] ?></p>
                        <h4>Salary</h4>
                        <p> <?php echo $row['salary'] ?></p>
                        <h4>Perks and Benefits:</h4>
                        <p> <?php echo $row['benefits'] ?></p>
                        <p> <?php echo $row['more_info'] ?></p>
                        <button type="button" class="apply-btn">Apply Now</button>
                    </div>

                </article>
            <?php
            }
            ?>
        </div>
    </div>
</section>

<?php
include('footer.php')
?>