<?php
include('header.php')
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
                <form action="">
                    <label for="">Name</label>
                    <input type="text" name="" id="">
                    <label for="">Email</label>
                    <input type="email" name="" id="">
                    <label for="">CV/Resume</label>
                    <input type="file" id="upload" accept=".pdf" hidden>
                    <label for="" class="label">
                        <img src="img/mdi_cloud-upload-outline.png" alt="">
                        <h4>upload CV/Resume</h4>
                        <p>File should be in pdf</p>
                    </label>

                    <button type="submit">Send Application</button>
                </form>
            </div>
        </div>
    </div>
    <!-- ==========================ACCORDION============================ -->
    <div class="questions">
        <!-- Questions -->
        <div class="section-center" data-aos="zoom-in">
        <?php
            $statement = $pdo->prepare("SELECT job_title, location, description, requirement, salary, benefits, more_info FROM tbl_jobs");
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