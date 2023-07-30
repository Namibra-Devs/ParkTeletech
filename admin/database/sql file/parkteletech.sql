-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 03:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkteletech`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_slug` varchar(255) NOT NULL,
  `blog_content` mediumtext NOT NULL,
  `blog_content_short` text NOT NULL,
  `blog_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`blog_id`, `blog_title`, `blog_slug`, `blog_content`, `blog_content_short`, `blog_date`, `photo`, `category_id`, `publisher`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(4, 'The Importance of Reliable Cell Tower Construction', 'the-importance-of-reliable-cell-tower-construction', '<p><span style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\">Check as we discuss the crucial role of reliable cell tower construction in ensuring seamless connectivity across Africa.</span><br></p>', 'Check as we discuss the crucial role of reliable cell tower construction in ensuring seamless connectivity across Africa.', '06-07-2023', 'blog-4.png', 7, 'Abdul', 0, '', '', ''),
(5, 'Enhancing Telecommunications Connectivity in Africa', 'enhancing-telecommunications-connectivity-in-africa', '<p><span style=\"font-family: \"Times New Roman\"; font-size: medium;\">We delve into the cutting-edge technologies, industry expertise, and commitment needed to meeting the highest standards in designing, constructing, and maintaining advanced cell towers.</span><br></p>', 'We delve into the cutting-edge technologies, industry expertise, and commitment needed to meeting the highest standards in designing, constructing, and maintaining advanced cell towers.', '14-07-2023', 'blog-5.png', 8, 'Abdul', 0, '', '', ''),
(6, 'Seamless and Efficient Cell Tower Construction: How Park Teletech Delivers Excellence', 'seamless-and-efficient-cell-tower-construction-how-park-teletech-delivers-excellence', '<p><span style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\">In this blog post, we delve into Park Teletech Africa Limited\'s approach to delivering excellence in cell tower construction. We explore their seamless and efficient process.</span><br></p>', 'In this blog post, we delve into Park Teletech Africa Limited\'s approach to delivering excellence in cell tower construction. We explore their seamless and efficient process.', '14-07-2023', 'blog-6.png', 8, 'Abdul', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(7, 'Contruction Tips', 'construction-tips', '', '', ''),
(8, 'News', 'news', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_photo`
--

CREATE TABLE `tbl_category_photo` (
  `p_category_id` int(11) NOT NULL,
  `p_category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category_photo`
--

INSERT INTO `tbl_category_photo` (`p_category_id`, `p_category_name`, `status`) VALUES
(5, 'Our Officers', 'Active'),
(6, 'Certifications', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certifications`
--

CREATE TABLE `tbl_certifications` (
  `id` int(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` mediumtext NOT NULL,
  `code_main` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`designation_id`, `designation_name`) VALUES
(6, 'Manager'),
(7, 'Director'),
(8, 'VP, Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expertise`
--

CREATE TABLE `tbl_expertise` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_expertise`
--

INSERT INTO `tbl_expertise` (`id`, `name`, `short_description`, `description`) VALUES
(1, 'Technical Expertise', 'Our dedicated team brings a wealth of expertise in the field of tele-communications infrastructure. ', '<p>Our dedicated team brings a wealth of expertise in the field of tele-communications infrastructure. With years of experience and deep know-ledge in designing, constructing, and maintaining cell towers, we have honed our skills to deliver outstanding results.</p><p>Okay</p>'),
(3, 'Industry Leadership', 'Through our technical expertise and advanced technologies, we have established ourselves as leaders in the cell tower construction industry. Our focus on quality, efficiency,', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 17.6px; text-align: justify;\">Through our technical expertise and advanced technologies, we have established ourselves as leaders in the cell tower construction industry. Our focus on quality, efficiency, and reliability has earned us a reputation for delivering exceptional projects that meet and exceed the highest industry standards.</span><br></p>'),
(4, 'Quality Assurance', 'Our commitment to quality is unwavering. By combining our technical prowess with meticulous attention to detail, we ensure that each project is completed to the highest standards. Our use of advanced technologies allows us to maintain strict quality contr', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 17.6px; text-align: justify;\">Our commitment to quality is unwavering. By combining our technical prowess with meticulous attention to detail, we ensure that each project is completed to the highest standards. Our use of advanced technologies allows us to maintain strict quality control</span><br></p>'),
(5, 'Advanced Technologies', 'We believe in leveraging cutting-edge technologies to optimize the construction process and enhance the performance of cell towers. We utilize state-of-the-art equipment and tools that enable us to execute projects with precision and efficiency.', '<p><span style=\"color: rgb(69, 69, 69); font-family: \"Times New Roman\"; font-size: 17.6px; text-align: justify;\">We believe in leveraging cutting-edge technologies to optimize the construction process and enhance the performance of cell towers. We utilize state-of-the-art equipment and tools that enable us to execute projects with precision and efficiency.</span><br></p>'),
(6, 'Efficiency and Timeliness', 'The incorporation of advanced technologies streamlines our construction process, enabling us to work efficiently without compromising on quality or safety. Automated systems, remote monitoring, and data-driven analytics enhance our project management capa', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 17.6px; text-align: justify;\">The incorporation of advanced technologies streamlines our construction process, enabling us to work efficiently without compromising on quality or safety. Automated systems, remote monitoring, and data-driven analytics enhance our project management capabilities.</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_category`
--

CREATE TABLE `tbl_faq_category` (
  `faq_category_id` int(11) NOT NULL,
  `faq_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_faq_category`
--

INSERT INTO `tbl_faq_category` (`faq_category_id`, `faq_category_name`) VALUES
(1, 'General Questions'),
(2, 'Client Query'),
(3, 'Technical Questions');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `file_id` int(11) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` int(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `requirement` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `benefits` varchar(255) NOT NULL,
  `more_info` varchar(255) NOT NULL,
  `job_category_id` int(255) NOT NULL,
  `job_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `job_title`, `location`, `description`, `requirement`, `salary`, `benefits`, `more_info`, `job_category_id`, `job_category_name`) VALUES
(7, 'Construction Engineer', 'Kumasi - Ghana', '<p style=\"margin-bottom: 0px; padding: 0px 0px 0.3rem; color: rgb(69, 69, 69); font-family: \"Times New Roman\"; font-size: medium;\">As a Construction Engineer at [Company Name], you will play a crucial role in the planning, coordination, and execution of telecommunications construction projects. You will work closely with project managers, architects, and subcontractors to ensure that construction activities are carried out efficiently and meet industry standards. Your expertise in construction engineering will contribute to the successful completion of projects on time and within budget. Responsibilities:</p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 1.8rem; padding: 0px 0px 0.3rem; color: rgb(69, 69, 69); font-family: \"Times New Roman\"; font-size: medium;\"><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Develop and review project plans, specifications, and construction schedules.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Conduct site visits and inspections to monitor progress, quality, and compliance with safety regulations.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Collaborate with project teams to ensure smooth coordination and communication between various stakeholders.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Evaluate and select subcontractors, suppliers, and vendors for construction materials and equipment.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Manage and oversee construction activities, including site preparation, excavation, foundation construction, structural installations, and finishing works.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Ensure adherence to building codes, regulations, and industry standards.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Prepare and review cost estimates, budgets, and progress reports.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Resolve construction-related issues and address any delays or challenges that may arise during the project lifecycle</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Conduct risk assessments and implement appropriate mitigation measures.</li><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Maintain accurate documentation of construction activities, including drawings, permits, and change orders.</li></ul>', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 1.8rem; padding: 0px 0px 0.3rem; color: rgb(69, 69, 69); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\"><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Bachelor\'s degree', 'Competitive salary commensurate with experience and qualifications.', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 1.8rem; padding: 0px 0px 0.3rem; color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><li style=\"margin: 0px; padding: 0px 0px 0.3rem;\">Health insurance covera', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Join our team of construction engineering professionals at [Company Name] and contribute to the development of critical telecommunications infrastructure', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_category`
--

CREATE TABLE `tbl_job_category` (
  `job_category_name` varchar(255) NOT NULL,
  `job_category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_job_category`
--

INSERT INTO `tbl_job_category` (`job_category_name`, `job_category_id`) VALUES
('Construction', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `value`) VALUES
(1, 'ABOUT_US', 'About Us'),
(2, 'LATEST_NEWS', 'Latest News'),
(3, 'POPULAR_NEWS', 'Popular News'),
(4, 'CONTACT_US', 'Contact Us'),
(5, 'CONTACT_FORM', 'Contact Form'),
(6, 'FULL_NAME', 'Full Name'),
(7, 'EMAIL_ADDRESS', 'Email Address'),
(8, 'PHONE_NUMBER', 'Phone Number'),
(9, 'MESSAGE', 'Message'),
(10, 'SEND_MESSAGE', 'Send Message'),
(11, 'CATEGORY', 'Category'),
(12, 'POSTED_ON', 'Posted on'),
(13, 'READ_MORE', 'Read More'),
(14, 'CATEGORIES', 'Categories'),
(15, 'SEARCH', 'Search'),
(16, 'SEARCH_BY_COLON', 'Search By:'),
(17, 'DATE', 'Date'),
(18, 'SHARE_THIS', 'Share This'),
(19, 'COMMENTS', 'Comments'),
(20, 'ENTER_YOUR_EMAIL', 'Enter Your Email'),
(21, 'SUBMIT', 'Submit'),
(22, 'CATEGORY_COLON', 'Category:'),
(23, 'SERVICE_COLON', 'Service:'),
(24, 'SERVICES', 'Services'),
(26, 'EMAIL_VALID_CHECK', 'Email Address must be valid'),
(27, 'SUBSCRIPTION_SUCCESS_MESSAGE', 'Please check your email and confirm your subscription.'),
(28, 'FULL_NAME_EMPTY_CHECK', 'Name can not be empty'),
(29, 'PHONE_EMPTY_CHECK', 'Phone Number can not be empty'),
(30, 'EMAIL_EMPTY_CHECK', 'Email Address can not be empty'),
(31, 'COMMENT_EMPTY_CHECK', 'Comment can not be empty'),
(33, 'ADDRESS', 'Address'),
(34, 'WEBSITE', 'Website'),
(35, 'ABOUT', 'About'),
(36, 'CONTACT', 'Contact'),
(37, 'SOCIAL_MEDIA_HEADLINE', 'Social Media Activities'),
(38, 'SEE_FULL_PROFILE', 'See Full Profile'),
(39, 'TEAM_MEMBER_COLON', 'Team Member:'),
(40, 'NEWS_EMPTY_CHECK', 'Sorry! No News is found.'),
(41, 'PREVIOUS', 'Previous'),
(42, 'NEXT', 'Next'),
(43, 'EMAIL_EXIST_CHECK', 'Email Address already exists'),
(44, 'CONTACT_FORM_MESSAGE', 'Contact Form Message'),
(45, 'CONTACT_FORM_SUCCESS_MESSAGE', 'Email is sent successfully. '),
(46, 'SUBSCRIPTION_SUBJECT', 'Subscriber Email Confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_our_officers`
--

CREATE TABLE `tbl_our_officers` (
  `id` int(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_content` mediumtext NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`page_id`, `page_name`, `page_content`, `photo`) VALUES
(1, 'Our Careers', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 20px;\">Join our dynamic team and be a part of the exciting world of telecommunications construction. At Park Teletech, we are dedicated to building and maintaining the infrastructure that powers communication networks around the globe. As a leader in our industry, we are committed to excellence, innovation, and providing exceptional services to our clients.</span><br></p>\r\n', 'page-photo-1.png'),
(2, 'Health & Safety', '<p><span style=\"color: rgb(33, 33, 33); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 30px;=\"\" word-spacing:=\"\" 0.2rem;\"=\"\"><b>Connecting Lives, Safeguarding Health: Our Commitment to Telecommunication Safety</b></span><br></p><p style=\"margin-bottom: 1.5rem; padding: 0px; font-size: 1.25rem; color: rgb(69, 69, 69); font-family: \" times=\"\" new=\"\" roman\";\"=\"\">At Park Teletech, health and safety are our top priorities. We firmly believe that providing secure and reliable communication services goes hand in hand with ensuring the well-being of our customers, employees, and the communities we serve. We are dedicated to fostering a culture of safety in every aspect of our operations. From the design and maintenance of our network infrastructure to the training and development of our staff, we continuously strive to create an environment where health and safety are paramount. Our commitment extends beyond regulatory compliance. We proactively identify potential hazards and implement robust measures to prevent accidents and mitigate risks. We invest in cutting-edge technologies and adhere to industry best practices to guarantee the highest standards of health and safety.</p>', 'page-photo-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `p_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `photo_caption`, `photo_name`, `p_category_id`) VALUES
(24, 'our officer', 'photo-24.png', 5),
(25, 'our officer', 'photo-25.png', 5),
(26, 'our officer', 'photo-26.jpg', 5),
(27, 'certificate', 'photo-27.png', 6),
(28, 'certificate', 'photo-28.png', 6),
(29, 'certificate', 'photo-29.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `short_description` mediumtext NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `name`, `slug`, `description`, `short_description`, `photo`, `banner`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(9, 'Cell Tower Design and Construction', 'cell-tower-design-and-contruction', '<p><span style=\"color: rgb(69, 69, 69); font-family: \"Times New Roman\"; font-size: 20px;\">This service involves the comprehensive design and construction of cell towers for telecommunications companies. Our company specializes in developing innovative and efficient designs that meet the specific needs of our clients. Our expert team of engineers and architects collaborates closely with clients to understand their requirements and create customized solutions.</span><br></p>\r\n', 'This service involves the comprehensive design and construction of cell towers for telecommunications companies. Our company specializes in developing innovative and efficient designs that meet the specific needs of our clients. Our expert team of engineers and architects collaborates closely with clients to understand their requirements and create customized solutions.', 'service-9.png', 'service-banner-9.jpg', 'Reporting', 'fwef', ''),
(11, 'Cell Tower Installation', 'cell-tower-installation', '<p><span style=\"color: rgb(69, 69, 69); font-family: \"Times New Roman\"; font-size: 20px;\">We offer professional installation services for cell towers, ensuring proper and secure placement of the tower infrastructure. Our experienced installation team utilizes specialized equipment and adheres to industry standards to guarantee reliable and efficient tower installation.</span><br></p>', 'We offer professional installation services for cell towers, ensuring proper and secure placement of the tower infrastructure. Our experienced installation team utilizes specialized equipment and adheres to industry standards to guarantee reliable and efficient tower installation.', 'service-11.png', 'service-banner-11.png', '', '', ''),
(12, 'Cell Tower Maintenance and Upgrade', 'cell-tower-maintenance-and-upgrade', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 20px;\">We provide comprehensive maintenance and upgrade services for existing cell towers. We understand the critical role that cell towers play in maintaining reliable network coverage, and our services are designed to enhance tower performance, prolong lifespan, and accommodate technological advancements.</span><br></p>', 'We provide comprehensive maintenance and upgrade services for existing cell towers. We understand the critical role that cell towers play in maintaining reliable network coverage, and our services are designed to enhance tower performance, prolong lifespan, and accommodate technological advancements.', 'service-12.png', 'service-banner-12.png', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` mediumtext NOT NULL,
  `footer_copyright` mediumtext NOT NULL,
  `contact_address` mediumtext NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` mediumtext NOT NULL,
  `total_recent_news_footer` int(10) NOT NULL,
  `total_popular_news_footer` int(10) NOT NULL,
  `total_recent_news_sidebar` int(11) NOT NULL,
  `total_popular_news_sidebar` int(11) NOT NULL,
  `total_recent_news_home_page` int(11) NOT NULL,
  `meta_title_home` mediumtext NOT NULL,
  `meta_keyword_home` mediumtext NOT NULL,
  `meta_description_home` mediumtext NOT NULL,
  `home_title_service` varchar(255) NOT NULL,
  `home_subtitle_service` varchar(255) NOT NULL,
  `home_status_service` varchar(10) NOT NULL,
  `home_title_team_member` varchar(255) NOT NULL,
  `home_subtitle_team_member` varchar(255) NOT NULL,
  `home_status_team_member` varchar(10) NOT NULL,
  `home_title_testimonial` varchar(255) NOT NULL,
  `home_subtitle_testimonial` varchar(255) NOT NULL,
  `home_status_testimonial` varchar(10) NOT NULL,
  `home_photo_testimonial` varchar(255) NOT NULL,
  `home_title_news` varchar(255) NOT NULL,
  `home_subtitle_news` varchar(255) NOT NULL,
  `home_status_news` varchar(10) NOT NULL,
  `home_title_partner` varchar(255) NOT NULL,
  `home_subtitle_partner` varchar(255) NOT NULL,
  `home_status_partner` varchar(10) NOT NULL,
  `mod_rewrite` varchar(10) NOT NULL,
  `newsletter_title` varchar(255) NOT NULL,
  `newsletter_text` mediumtext NOT NULL,
  `newsletter_photo` varchar(255) NOT NULL,
  `newsletter_status` varchar(10) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_category` varchar(255) NOT NULL,
  `counter_1_title` varchar(255) NOT NULL,
  `counter_1_value` varchar(10) NOT NULL,
  `counter_2_title` varchar(255) NOT NULL,
  `counter_2_value` varchar(10) NOT NULL,
  `counter_3_title` varchar(255) NOT NULL,
  `counter_3_value` varchar(10) NOT NULL,
  `counter_4_title` varchar(255) NOT NULL,
  `counter_4_value` varchar(10) NOT NULL,
  `counter_photo` varchar(255) NOT NULL,
  `counter_status` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `preloader` varchar(3) NOT NULL,
  `active_editor` varchar(40) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `home_about_title` varchar(200) NOT NULL,
  `home_about_img` varchar(200) NOT NULL,
  `home_about_content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `total_recent_news_footer`, `total_popular_news_footer`, `total_recent_news_sidebar`, `total_popular_news_sidebar`, `total_recent_news_home_page`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `home_title_service`, `home_subtitle_service`, `home_status_service`, `home_title_team_member`, `home_subtitle_team_member`, `home_status_team_member`, `home_title_testimonial`, `home_subtitle_testimonial`, `home_status_testimonial`, `home_photo_testimonial`, `home_title_news`, `home_subtitle_news`, `home_status_news`, `home_title_partner`, `home_subtitle_partner`, `home_status_partner`, `mod_rewrite`, `newsletter_title`, `newsletter_text`, `newsletter_photo`, `newsletter_status`, `banner_search`, `banner_category`, `counter_1_title`, `counter_1_value`, `counter_2_title`, `counter_2_value`, `counter_3_title`, `counter_3_value`, `counter_4_title`, `counter_4_value`, `counter_photo`, `counter_status`, `color`, `preloader`, `active_editor`, `website_name`, `home_about_title`, `home_about_img`, `home_about_content`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Park Teletech Africa Limited is a trusted and reliable partner for comprehensive cell tower construction solutions.<br></p>\r\n', 'Â© 2023 Park Teletech', 'ABC Steet, ABC', 'info@parkteletech.com', '+2338096542356', '', '', 3, 3, 4, 4, 7, '', '', '', 'Our Services', 'Check Out All Our Consulting Services', 'Show', 'Team Members', 'Meet with All Our Qualified Team Members', 'Show', 'Testimonial', 'Our Happy Clients Tell About Us', 'Show', 'testimonial.jpg', 'Latest News', 'See All Our Updated and Latest News', 'Show', 'Our Partners', 'All Our Company Partners are Listed Below', 'Show', 'On', 'Newsletter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid fugit expedita, iure ullam cum vero ex sint aperiam maxime.', 'newsletter.jpg', 'Show', 'banner_search.jpg', 'banner_category.jpg', 'Years of Experience', '3', 'Events Organized', '100', 'Team Members', '50', '', '', 'counter.jpg', 'Show', '2795D0', 'Off', 'Summernote', 'Park Teletech', 'ABOUT US', 'home_about_img.png', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 20px;\">Park Teletech Africa Limited is a trusted and reliable partner for comprehensive cell tower construction solutions. With a wealth of expertise in the field of telecommunications infrastructure, they specialize in designing, constructing, and maintaining cutting-edge cell towers across Africa. With a dedicated and experienced team, Park Teletech Africa Limited combines technical excellence with a strong commitment to delivering high-quality projects that meet the highest industry standards. As industry leaders, Park Teletech Africa Limited takes pride in providing end-to-end solutions for their clients. From the initial stages of site selection and engineering to the final stages of tower installation and integration, they ensure a seamless and efficient process. By offering a full range of services, they take care of every aspect of cell tower construction, allowing their clients to focus on their core business.</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_email`
--

CREATE TABLE `tbl_setting_email` (
  `id` int(11) NOT NULL,
  `send_email_from` varchar(150) NOT NULL,
  `receive_email_to` varchar(150) NOT NULL,
  `smtp_host` varchar(150) NOT NULL,
  `smtp_port` varchar(10) NOT NULL,
  `smtp_username` varchar(150) NOT NULL,
  `smtp_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_setting_email`
--

INSERT INTO `tbl_setting_email` (`id`, `send_email_from`, `receive_email_to`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`) VALUES
(1, 'ghafcydc@gmail.com', 'abdulgafurshaattir@gmail.com', 'smtp.mailtrap.io', '587', '1d63d91574de8a', 'ec61d080c569b1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`, `status`) VALUES
(2, 'slider-2.png', 'Leading the Way in Seamless Telecommunications Connectivity', 'At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering commitment to quality ensure seamless connectivity across Africa.Partner wi', 'Experience Our Services', '#', 'Right', 'Active'),
(3, 'slider-3.png', 'Leading the Way in Seamless Telecommunications Connectivity', 'At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering commitment to quality ensure seamless connectivity across Africa. Partner w', 'Experience Our Services', '#', 'Left', 'Active'),
(4, 'slider-4.png', 'Leading the Way in Seamless Telecommunications Connectivity', 'At Park Teletech Africa Limited, we specialize in designing, constructing, and maintaining cutting-edge cell towers. Our technical expertise, advanced technologies, and unwavering commitment to quality ensure seamless connectivity across Africa.Partner wi', 'Experience Our Services', '#', 'Left', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fab fa-facebook'),
(2, 'Twitter', '#', 'fab fa-twitter'),
(3, 'LinkedIn', '#', 'fab fa-linkedin'),
(4, 'Google Plus', '#', 'fab fa-google-plus'),
(5, 'Pinterest', '#', 'fab fa-pinterest'),
(6, 'YouTube', '', 'fab fa-youtube'),
(7, 'Instagram', '', 'fab fa-instagram'),
(8, 'Tumblr', '', 'fab fa-tumblr'),
(9, 'Flickr', '', 'fab fa-flickr'),
(10, 'Reddit', '', 'fab fa-reddit'),
(11, 'Snapchat', '', 'fab fa-snapchat'),
(12, 'WhatsApp', '', 'fab fa-whatsapp'),
(13, 'Quora', '', 'fab fa-quora'),
(14, 'StumbleUpon', '', 'fab fa-stumbleupon'),
(15, 'Delicious', '', 'fab fa-delicious'),
(16, 'Digg', '', 'fab fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(9, 'test1@gmail.com', '2022-08-23', '2022-08-23 13:47:54', '', 1),
(10, 'test2@gmail.com', '2022-08-23', '2022-08-23 13:48:09', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team_member`
--

CREATE TABLE `tbl_team_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `flickr` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `practice_location` mediumtext NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_team_member`
--

INSERT INTO `tbl_team_member` (`id`, `name`, `slug`, `designation_id`, `photo`, `banner`, `degree`, `detail`, `facebook`, `twitter`, `linkedin`, `youtube`, `google_plus`, `instagram`, `flickr`, `address`, `practice_location`, `phone`, `email`, `website`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(9, 'Ismail Ahmed', 'ismail', 6, 'team-member-9.png', 'team-member-banner-9.png', '', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 16.8px; text-align: justify;\">Ismail Ahmad is a highly skilled creative director in the event production field, with over a decade of experience designing and executing unique and memorable events. Known for his innovative ideas and attention to detail, John has worked with numerous high-profile clients, delivering exceptional experiences that exceed expectations. He is passionate about using his expertise to create unforgettable events that bring people together and leave a lasting impression.</span><br></p>', '#', '#', '#', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(11, 'Adetola Afolabi', 'adetola', 7, 'team-member-11.png', '', '', '<p><span style=\"color: rgb(69, 69, 69); font-family: \"Times New Roman\"; font-size: 16.8px; text-align: justify;\">Adetola Afolabi is a highly skilled creative director in the event production field, with over a decade of experience designing and executing unique and memorable events. Known for his innovative ideas and attention to detail, John has worked with numerous high-profile clients, delivering exceptional experiences that exceed expectations. He is passionate about using his expertise to create unforgettable events that bring people together and leave a lasting impression.</span><br></p>', '#', '#', '#', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(12, 'Rachel Asamoa', 'rachel-asamoa', 8, 'team-member-12.png', '', '', '<p><span style=\"color: rgb(69, 69, 69); font-family: &quot;Times New Roman&quot;; font-size: 16.8px; text-align: justify;\">Rachel Asamoa is a highly skilled creative director in the event production field, with over a decade of experience designing and executing unique and memorable events. Known for his innovative ideas and attention to detail, John has worked with numerous high-profile clients, delivering exceptional experiences that exceed expectations. He is passionate about using his expertise to create unforgettable events that bring people together and leave a lasting impression.</span><br></p>', '#', '', '#', '#', '', '', '', '', '', '', '', '', 'Active', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `company`, `photo`, `comment`) VALUES
(4, 'Alfred Ismail', 'CEO', 'Global Telecoms Ltd', 'testimonial-4.png', 'At Park Teletech Africa Limited, excellence in infrastructure development is their hallmark. They combine their technical prowess, industry knowledge, and attention to detail to ensure that each project is completed to the highest standards'),
(5, 'Mohammed Yakubu', 'CTO', 'Standard Telecons', 'testimonial-5.png', 'They prioritise timely project delivery, without compromising on quality or safety. By choosing Park Teletech Africa Limited as your trusted partner, you can expect a seamless and professional experience from start to finish');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `password`, `photo`, `role`, `status`) VALUES
(1, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user-1.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_why_us`
--

CREATE TABLE `tbl_why_us` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_why_us`
--

INSERT INTO `tbl_why_us` (`id`, `title`, `content`, `photo`) VALUES
(2, 'Cutting-Edge Technology', '<h3 style=\"margin: 0px; padding: 0px 0px 0.4rem; color: rgb(0, 0, 0); font-family: \"Times New Roman\";\"><span style=\"font-size: medium;\">Embrace the latest advancements in telecommunications construction. We are at the forefront of deploying state-of-the-art technologies to build robust and reliable networks.</span><br></h3>', 'why_us-2.png'),
(3, 'Meaningful Impact', '<h3 style=\"margin: 0px; padding: 0px 0px 0.4rem; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\"><span style=\"font-size: medium;\">Be part of a vital industry that connects people and enables the flow of information. Every day, our work contributes to creating a more connected world.</span><br></h3>', 'why_us-3.png'),
(4, 'Collaborative Environment', '<h3 style=\"margin: 0px; padding: 0px 0px 0.4rem; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\"><span style=\"font-size: medium;\">Join a team of talented and dedicated professionals who collaborate closely to achieve our goals. We foster a supportive and inclusive work culture that encourages innovation and teamwork.</span><br></h3>', 'why_us-4.png'),
(5, 'Professional Growth', '<h3 style=\"margin: 0px; padding: 0px 0px 0.4rem; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\"><span style=\"font-size: medium;\">We value our employees\' development and provide opportunities for continuous learning and skill enhancement. Expand your expertise and advance your career with us.</span><br></h3>', 'why_us-5.png'),
(6, 'Challenging Projects', '<h3 style=\"margin: 0px; padding: 0px 0px 0.4rem; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\"><span style=\"font-size: medium;\">Engage in exciting projects that push boundaries and require creative problem-solving. Take on diverse assignments that will broaden your skills and expertise.</span><br></h3>', 'why_us-6.png'),
(7, 'Competitive Compensation', '<h3 style=\"margin: 0px; padding: 0px 0px 0.4rem; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\"><span style=\"font-size: medium;\">We offer competitive salaries and benefits packages to attract and retain the best talent in the industry. We recognize and reward our employees\' contributions to our success.</span><br></h3>', 'why_us-7.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indexes for table `tbl_certifications`
--
ALTER TABLE `tbl_certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `tbl_expertise`
--
ALTER TABLE `tbl_expertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  ADD PRIMARY KEY (`faq_category_id`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `tbl_job_category`
--
ALTER TABLE `tbl_job_category`
  ADD PRIMARY KEY (`job_category_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_our_officers`
--
ALTER TABLE `tbl_our_officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting_email`
--
ALTER TABLE `tbl_setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_why_us`
--
ALTER TABLE `tbl_why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_certifications`
--
ALTER TABLE `tbl_certifications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_expertise`
--
ALTER TABLE `tbl_expertise`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  MODIFY `faq_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `job_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_job_category`
--
ALTER TABLE `tbl_job_category`
  MODIFY `job_category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_our_officers`
--
ALTER TABLE `tbl_our_officers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_email`
--
ALTER TABLE `tbl_setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_why_us`
--
ALTER TABLE `tbl_why_us`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
