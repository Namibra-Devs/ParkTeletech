<?php
include('header.php')
?>
<section class="services">
    <div class="title">
        <h1>OUR HEALTH AND SAFETY MANDATE</h1>
        <div class="underline" style="width: 30vw; min-width: 19rem;"></div>
    </div>
    <div class="services_container">
        <div class="service-box" style="align-items: flex-start;">

            <?php
            $statement = $pdo->prepare("SELECT page_name, page_content, photo FROM tbl_page WHERE page_id=2"); //set page_id to be 2, which is health page
            $statement->execute();
            $result = $statement->fetchAll(PDO::FETCH_ASSOC);

            foreach ($result as $row) {
            ?>
                <div class="service-text">
                    <p><?php echo $row['page_content'] ?></p>
                </div>
                <div class="service-img">
                    <img src="./assets/uploads/<?php echo $row['photo'] ?>" alt="<?php echo $row['photo'] ?>">
                </div>
            <?php
            }
            ?>

        </div>
    </div>
</section>
<section class="expertise">
    <div class="title">
        <h1>OUR OFFICERS AT WORK</h1>
        <div class="underline"></div>
    </div>
    <div class="expertise-container">
        
        <?php getOfficerAtWork() ?>
    </div>
</section>
<section class="certificate">
    <div class="title">
        <h1>HEALTH AND SAFETY CERTIFICATIONS</h1>
        <div class="underline" style="width: 30vw; min-width: 20rem;"></div>
    </div>
    <div class="certificate-details">

        <?php getCerticates() ?>
    </div>
</section>

<?php
include('footer.php')
?>