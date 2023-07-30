    <!-- site header -->
    <?php
    include('header.php')
    ?>

    <!-- Main body section -->
    <section class="home">
        <div class="slider-wrapper owl-carousel owl-theme" id="hero-slider">
            <div class="slider1">
                <div class="home_banner_text">
                    <h1>Leading the Way in Seamless Telecommunications Connectivity.</h1>
                    <p>At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining
                        cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering
                        commitment to quality ensure seamless connectivity across Africa.
                        Partner with us for excellence in telecommunications infrastructure development.</p>
                    <a href="#">Experience Our Services</a>
                </div>
            </div>

            <div class="slider2">
                <div class="home_banner_text">
                    <h1>Leading the Way in Seamless Telecommunications Connectivity.</h1>
                    <p>At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining
                        cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering
                        commitment to quality ensure seamless connectivity across Africa.
                        Partner with us for excellence in telecommunications infrastructure development.</p>
                    <a href="#">Experience Our Services</a>
                </div>
            </div>

            <div class="slider3">
                <div class="home_banner_text">
                    <h1>Leading the Way in Seamless Telecommunications Connectivity.</h1>
                    <p>At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining
                        cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering
                        commitment to quality ensure seamless connectivity across Africa.
                        Partner with us for excellence in telecommunications infrastructure development.</p>
                    <a href="#">Experience Our Services</a>
                </div>
            </div>

            <div class="slider4">
                <div class="home_banner_text">
                    <h1>Leading the Way in Seamless Telecommunications Connectivity.</h1>
                    <p>At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining
                        cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering
                        commitment to quality ensure seamless connectivity across Africa.
                        Partner with us for excellence in telecommunications infrastructure development.</p>
                    <a href="#">Experience Our Services</a>
                </div>
            </div>
        </div>
    </section>
    <div class="navbar-overlay">
        <div class="navbar-details">
            <span class="close-nav">
                <i class="fas fa-window-close"></i>
            </span>
            <div class="overlay-links">
                <a href="home.html">Home</a>
                <a href="aboutUs.html">About us</a>
                <a href="services.html">Services</a>
                <a href="portfolio.html">Portfolio</a>
                <a href="blog.html">Blog</a>
                <a href="career.html">Careers</a>
                <a href="health.html">Health & Safety</a>
                <a href="contact.html">Contact Us</a>
            </div>
        </div>
    </div>
    <section class="services">
        <div class="title">
            <h1>OUR SERVICES</h1>
            <div class="underline"></div>
        </div>
        <div class="services_container">
            <?php getServices() ?>
        </div>
        <button class="btn"> <a href="#">View All <img src="img/Vector.png" alt=""></a></button>
    </section>
    <section class="expertise">
        <div class="title">
            <h1>EXPERTISE AND TECHNOLOGY</h1>
            <div class="underline" style="width: 24vw; min-width: 15rem;"></div>
        </div>
        <div class="expertise-container">
            <div class="expertise-box">
                <img src="img/expertise-1.png" alt="">
                <h2> Technical Expertise</h2>
                <p>Our dedicated team brings a wealth of expertise in the field of
                    tele-communications infrastructure. With years of experience and deep know-ledge in designing,
                    constructing,
                    and maintaining cell towers, we have honed our skills to deliver outstanding results.</p>
            </div>
            <div class="expertise-box">
                <img src="img/expertise-2.png" alt="">
                <h2> Industry Leadership</h2>
                <p>Through our technical expertise and advanced technologies, we have established ourselves as leaders
                    in the cell tower construction industry. Our focus on quality, efficiency, and reliability
                    has earned us a reputation for delivering exceptional projects that meet and exceed the highest
                    industry standards.</p>
            </div>
            <div class="expertise-box">
                <img src="img/expertise-3.png" alt="">
                <h2> Quality Assurance</h2>
                <p>Our commitment to quality is unwavering. By combining our technical prowess with
                    meticulous attention to detail, we ensure that each project is completed to the highest standards.
                    Our use of advanced technologies allows us to maintain strict quality control</p>
            </div>
            <div class="expertise-box">
                <img src="img/expertise-4.png" alt="">
                <h2> Advanced Technologies</h2>
                <p>We believe in leveraging cutting-edge technologies to optimize the construction process and enhance
                    the performance of cell towers.
                    We utilize state-of-the-art equipment and tools that enable us to execute projects with precision
                    and efficiency.</p>
            </div>
            <div class="expertise-box">
                <img src="img/expertise-5.png" alt="">
                <h2>Efficiency and Timeliness</h2>
                <p>The incorporation of advanced technologies streamlines our construction process, enabling
                    us to work efficiently without compromising on quality or safety. Automated systems,
                    remote monitoring, and data-driven analytics enhance our project management capabilities.</p>
            </div>
        </div>
    </section>
    <section class="portfolio">
        <div class="title">
            <h1>A GLIMPSE OF OUR PORTFOLIO</h1>
            <div class="underline" style="width: 25vw; min-width: 15rem;"></div>
        </div>
        <div class="portfolio-img-1">
            <div>
                <img src="img/portfolio-1.png" alt="">
            </div>
            <div>
                <img src="img/portfolio-2.png" alt="">
            </div>
        </div>
        <div class="portfolio-img-1">
            <div>
                <img src="img/portfolio-3.png" alt="">
            </div>
            <div>
                <img src="img/portfolio-4.png" alt="">
            </div>
        </div>
    </section>
    <section class="testimonials">
        <div class="title">
            <h1>WHAT OUR CLIENTS SAY ABOUT US</h1>
            <div class="underline"></div>
        </div>
        <div class="wrapper">
            <div class="carousel owl-carousel">

                <?php getTestimonials() ?>
            </div>
        </div>
    </section>
    <section class="blog">
        <div class="title">
            <h1>BLOG, NEWS AND INSIGHTS</h1>
            <div class="underline"></div>
        </div>
        <div class="blog-container">
            <?php getBlogs() ?>
        </div>
        <button class="btn"> <a href="#">View All <img src="img/Vector.png" alt=""></a></button>
    </section>
    <section class="contact">
        <div class="title">
            <h1>CONTACT US</h1>
            <div class="underline"></div>
        </div>
        <div class="contact-details">
            <div class="form">
                <form action="">
                    <label for="">Name</label>
                    <input type="text" name="" id="">
                    <label for="">Email</label>
                    <input type="email" name="" id="">
                    <label for="">Message</label>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                    <button type="submit">Send Message</button>
                </form>
            </div>
            <div class="location">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253609.6745933783!2d-1.780924697680578!3d6.690058070731559!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdb93e59a4e4c49%3A0x829c711d7b65e682!2sKumasi!5e0!3m2!1sen!2sgh!4v1687431819106!5m2!1sen!2sgh"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </section>

    <!-- site footer -->
    <?php
    include('footer.php')
    ?>