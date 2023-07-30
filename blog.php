<?php
include('header.php')
?>
<section class="blog">
    <div class="title">
        <h1>BLOG, NEWS AND INSIGHTS</h1>
        <div class="underline" style="width: 22vw; min-width: 15rem;"></div>
    </div>
    <div class="blog-container">
        <?php getBlogs() ?>
    </div>
</section>

<?php
include('footer.php')
?>