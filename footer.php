<?php
$footerInfo = getWebsiteDetails();
?>
<section class="footer">
        <div class="teletech">
            <div>
                <div class="footer-logo">
                    <a><?php echo $footerInfo['website_name'] ?></a>
                </div>
                <div class="teletech-text">
                    <p><?php echo $footerInfo['footer_about'] ?></p>
                </div>
            </div>
            <div>
                <p>&copy; <?php echo $footerInfo['website_name'] ?> <span id="date"></span></p>
            </div>
        </div>
        <div class="quick-links">
            <h3>Quick Links</h3>
            <a href="">About us</a>
            <a href="services.php">Services</a>
            <a href="portfolio.php">Portfolio</a>
            <a href="blog.php">Blog, News and Insights</a>
            <a href="contact.php">Contact Us</a>
        </div>
        <div class="get-intouch">
            <p><?php echo $footerInfo['contact_phone'] ?></p>
            <p><?php echo $footerInfo['contact_email'] ?></p>
            <div class="social-links">
                <a href="#">
                    <div class="fab fa-facebook"></div>
                </a>
                <a href="#">
                    <div class="fab fa-twitter"></div>
                </a>
                <a href="#">
                    <div class="fab fa-linkedin"></div>
                </a>
                <a href="#">
                    <div class="fab fa-instagram"></div>
                </a>
            </div>
        </div>
    </section>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/owl.carousel.min.js"></script>
    <script src="js/carousel.js"></script>
    <script src="./js/app.js"></script>
</body>
</body>

</html>