<?php

// get company name function
function getWebsiteDetails()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  foreach ($result as $row) {
    return $row;
  }
}

// get services function
function getServices()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT name, short_description, photo FROM tbl_service");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  foreach ($result as $service) {

    $service_name = $service['name'];
    $short_description = $service['short_description'];
    $photo = $service['photo'];

    echo  '
          <div class="service-box">
                <div class="service-img">
                    <img src="./assets/uploads/service/' . $photo . '" alt="' . $photo . '">
                </div>
                <div class="service-text">
                    <h2>' . $service_name . '</h2>
                    <p>' . $short_description . '</p>
                    <a href="#">Read More <img src="img/Vector.png" alt=""></a>
                </div>
            </div>
          ';
  }
}


// get Expertise Techonology function
function getExpertise()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT name, description FROM tbl_expertise");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  foreach ($result as $expertise) {

    $name = $expertise['name'];
    $description = $expertise['short_description'];
    echo  '
          <div class="service-box">
                <div class="service-img">
                    <img src="./assets/uploads/service/' . $photo . '" alt="' . $photo . '">
                </div>
                <div class="service-text">
                    <h2>' . $service_name . '</h2>
                    <p>' . $short_description . '</p>
                    <a href="#">Read More <img src="img/Vector.png" alt=""></a>
                </div>
            </div>
          ';
  }
}


// get Testimonials function
function getTestimonials()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT company, comment FROM tbl_testimonial");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  foreach ($result as $testimonial) {


    echo  '
    <div class="card">
    <img src="img/bi_quote.png" alt="">
    <p>'.$testimonial['comment'].'</p>
    <h3>'.$testimonial['company'].'</h3>
</div>
          ';
  }
}

// get blogs function 
function getBlogs()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT blog_title, blog_content, blog_content_short, blog_id, blog_date, photo FROM tbl_blogs");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  foreach ($result as $blog) {
    $blog_title = $blog['blog_title'];
    $blog_content = $blog['blog_content'];
    $blog_content_short = $blog['blog_content_short'];
    $blog_image = $blog['photo'];
    $blog_id = $blog['blog_id'];
    $blog_date = $blog['blog_date'];

    echo  '
    <div class="blog-details">
    <div class="blog-img">
        <img src="./assets/uploads/blog/'.$blog_image.'" alt="'.$blog_image.'">
    </div>
    <div class="blog-details-text">
        <p><button type="button" style="background-color: #C2EDCC;">News</button> '.$blog_date.'</p>
        <h3>'.$blog_title.'</h3>
        <p>'.$blog_content.'</p>
    </div>
</div>
            ';
  }
}

// Social icons function
function getSocialIcons()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT * FROM tbl_social");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  foreach ($result as $social) {
    if ($social['social_url'] != '') {
      echo '<li><a href="' . $social['social_url'] . '"><i class="' . $social['social_icon'] . '"></i></a></li>';
    }
  }
}

function getEvents()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT * FROM tbl_events");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);

  foreach ($result as $event) {

    $event_title         = $event['event_title'];
    $event_content_short = $event['event_content_short'];
    $event_venue      = $event['event_venue'];
    $event_date          = $event['event_date'];
    $event_link          = $event['event_link'];
    $photo               = $event['photo'];
    echo '
            <div class="flex-events">
        <div class="flex-event"  data-aos="fade-up" data-aos-delay="100">
          <div class="date">
            <p class="event-text">' . $event_date . '</p>
          </div>
          <div class="event-details">
            <h4 class="text-xl">' . $event_title . '</h4>
            <p>' . $event_content_short . '</p>
            <div>

              <div class="date-flex">
                <svg class="inline-block" fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round"
                    d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z">
                  </path>
                </svg>
                <span>10:00 AM</span>
              </div>
              <div class="date-flex">
                <svg class="inline-block" fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z"></path>
                  <path stroke-linecap="round" stroke-linejoin="round"
                    d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z"></path>
                  </path>
                </svg>
                <span>' . $event_venue . '</span>
              </div>
              <div class="button-div">
                <a href="' . $event_link . '" class="get-ticket">GET YOUR
                  TICKETS</a>
              </div>
            </div>
          </div>
        </div>
        <div class="img-div">
          <img class="event-img" src="./assets/uploads/' . $photo . '" alt="">
        </div>
      </div>
            ';
  }
}

function getGallerySlider()
{
  include('./admin/database/config.php');
  $statement = $pdo->prepare("SELECT * FROM tbl_photo");
  $statement->execute();
  $result = $statement->fetchAll();

  foreach ($result as $photo) {
    echo '
          <div class="swiper-slide" style="margin-right: 30px"><a href="./assets/uploads/' . $photo['photo_name'] . '" class="gallery-lightbox"><img src="./assets/uploads/' . $photo['photo_name'] . '" class="img-fluid" alt=""></a></div>
        ';
  }
}
