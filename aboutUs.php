<?php
include('header.php')

?>
<section class="services">
    <div class="title">
        <h1>ABOUT US</h1>
        <div class="underline"></div>
    </div>
    <div class="services_container">
       <div class="service-box">
        <div class="service-img">
            <img src="img/about.png" alt="">
        </div>
        <div class="service-text" >
            <p>Park Teletech Africa Limited is a trusted and reliable partner for comprehensive cell tower
                 construction solutions. With a wealth of expertise in the field of telecommunications infrastructure,
                  they specialize in designing, constructing, and maintaining cutting-edge cell towers across Africa.
                   With a dedicated and experienced team, Park Teletech Africa Limited combines technical excellence 
                   with a strong commitment to delivering high-quality projects that meet the highest industry standards.

                As industry leaders, Park Teletech Africa Limited takes pride in providing end-to-end solutions for
                 their clients. From the initial stages of site selection and engineering to the final stages of tower
                  installation and integration, they ensure a seamless and efficient process. By offering a full range
                   of services, they take care of every aspect of cell tower construction, allowing their clients to 
                   focus on their core business.
                </p>
        </div>
       </div>
       <div class="service-box">
        <div class="service-vision">
            <h2>Our Mission</h2>
            <p>Our mission is to be a trusted and reliable partner, providing comprehensive cell tower construction
                 solutions in Africa. They aim to deliver high-quality projects that meet the highest industry standards
                  and contribute to the expansion and enhancement of reliable telecommunications connectivity across the 
                  continent.</p>
        </div>
        <div class="service-vision">
            <h2>Our Vision</h2>
            <p>We envision a future where seamless connectivity is essential for businesses, communities, and individuals
                 in Africa. We strive to be industry leaders in cell tower construction, offering end-to-end solutions and
                  technical excellence. Our vision is to be recognized as the go-to company for cutting-edge and efficient
                   communication infrastructure.</p>
        </div>
       </div>
        
    </div>
</section>
<section class="team">
    <div class="title">
        <h1>OUR TEAM</h1>
        <div class="underline"></div>
    </div>
    <div class="team-members">
        
        <?php getTeam() ?>
    </div>
</section>
<section class="footer">
    <div class="teletech">
        <div>   
            <div class="footer-logo">
                <a>Park Teletech</a>
            </div>
            <div class="teletech-text">
                <p>Park Teletech Africa Limited is a trusted and 
            reliable partner for comprehensive cell tower construction solutions. </p>
            </div>
        </div>
        <div>
            <p>&copy; Park Teletech <span id="date"></span></p>
        </div>
    </div>
    <div class="quick-links">
        <h3>Quick Links</h3>
        <a href="">About us</a>
        <a href="">Services</a>
        <a href="">Portfolio</a>
        <a href="">Blog, News and Insights</a>
        <a href="">Contact Us</a>
    </div>
    <div class="get-intouch">
        <p>+2338096542356</p>
        <p>info@parkteletech.com</p>
        <div class="social-links">
            <a href=""><div class="fab fa-facebook"></div></a>
            <a href=""><div class="fab fa-twitter"></div></a>
            <a href=""><div class="fab fa-linkedin"></div></a>
            <a href=""><div class="fab fa-instagram"></div></a>
        </div>
    </div>
</section>
    
    <script src="./js/app.js"></script>
  </body>
</body>
</html>