-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 16 Octobre 2017 à 12:19
-- Version du serveur :  5.6.16
-- Version de PHP :  5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `hiepdev`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `active`) VALUES
(1, 'hiep', '123456', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id_cus` int(11) NOT NULL,
  `name_cus` varchar(255) NOT NULL,
  `add_cus` varchar(255) NOT NULL,
  `phone_cus` varchar(255) NOT NULL,
  `email_cus` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cv_education`
--

CREATE TABLE IF NOT EXISTS `cv_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `study` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `time_begin` year(4) NOT NULL,
  `time_end` year(4) NOT NULL,
  `id_cv` int(11) NOT NULL,
  `describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Contenu de la table `cv_education`
--

INSERT INTO `cv_education` (`id`, `study`, `school`, `time_begin`, `time_end`, `id_cv`, `describe`) VALUES
(52, 'Information Technology', 'Da Nang College Of Information Technology', 2012, 2015, 4, 'learning'),
(53, 'Information Technology', 'Da Nang College Of Information Technology', 2012, 2017, 5, 'aaaa'),
(59, 'Information Technology', 'Da Nang College Of Information Technology', 2008, 2006, 1, 'Learning code basic in school');

-- --------------------------------------------------------

--
-- Structure de la table `cv_event`
--

CREATE TABLE IF NOT EXISTS `cv_event` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `job` varchar(120) NOT NULL,
  `introduce` text NOT NULL,
  `avatar` varchar(120) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `website` varchar(120) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `create_day` datetime NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `cv_event`
--

INSERT INTO `cv_event` (`id`, `name`, `job`, `introduce`, `avatar`, `email`, `phone`, `website`, `birthday`, `address`, `create_day`, `active`) VALUES
(1, 'Tran Chanh Hiep', 'Back-end Developer', '<h3>Tran Chanh Hiep</h3>\r\n\r\n<p>I am a Front-End Developer</p>\r\n\r\n<p>I&#39;m 24 years old and I&rsquo;m single. I got 2 years experience as a Frontend Developer at GOSU Online Corporation. I like reading books and listening to music. My short term goal is to learn more about website and codes. I want to work in an environment that can help me apply whatever I have learnt and gain real life experience. My long-term goal is to build a website that serves as many people as possible.</p>\r\n', 'profile_img816111101.jpg', 'chanhhiep.0201@gmail.com', '0984347435', 'hiepdev.info', '1993-01-02 10:40:20', 'Da Nang', '2016-10-17 12:05:34', 1),
(2, 'Tran Chanh ', 'Front', '<h3>Tran Chanh Hiep </h3>\r\n										<h4>I am a Front-End Developer</h4>\r\n										<p>I''m 24 years old and I’m single. I got 2 years experience as a Frontend Developer at GOSU Online Corporation. I like reading books and listening to music.</p>\r\n										<p>My short term goal is to learn more about website and codes. I want to work in an environment that can help me apply whatever I have learnt and gain real life experience.</p>\r\n										<p>My long-term goal is to build a website that serves as many people as possible.</p>', '/public/static/uploads/cv1/profile_img.jpg', 'chanhhiep.0201@gmail.com', '09843478888', 'hiepdev.info', '1993-01-02 10:40:20', 'Hue ', '2017-09-28 10:32:27', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cv_experience`
--

CREATE TABLE IF NOT EXISTS `cv_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) NOT NULL,
  `time_begin` date NOT NULL,
  `time_end` date NOT NULL,
  `describe` varchar(255) NOT NULL,
  `id_cv` int(11) NOT NULL,
  `company_work` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- Contenu de la table `cv_experience`
--

INSERT INTO `cv_experience` (`id`, `position`, `time_begin`, `time_end`, `describe`, `id_cv`, `company_work`) VALUES
(3, 'Frontend', '2017-09-18', '2017-09-25', 'building', 2, 'Gosu company'),
(4, 'Frontend', '2017-09-18', '2017-09-25', 'building', 2, 'Gosu company'),
(5, 'Frontend', '2017-09-18', '2017-09-25', 'building', 2, 'Gosu company'),
(6, 'Frontend', '2017-09-18', '2017-09-25', 'building', 2, 'Gosu company'),
(181, 'Backend', '0000-00-00', '0000-00-00', 'building ', 1, 'Gosu company'),
(182, 'Frontend', '2017-09-18', '2017-09-25', 'building to website in company', 1, 'Sunsoft company');

-- --------------------------------------------------------

--
-- Structure de la table `cv_hobit`
--

CREATE TABLE IF NOT EXISTS `cv_hobit` (
  `id` int(11) NOT NULL,
  `id_cv` int(11) NOT NULL,
  `name_hobit` varchar(128) NOT NULL,
  `level_hobit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cv_hobit`
--

INSERT INTO `cv_hobit` (`id`, `id_cv`, `name_hobit`, `level_hobit`) VALUES
(1, 1, 'Reading book', 80),
(2, 1, 'Playing chess', 89),
(3, 1, 'Listening music', 90);

-- --------------------------------------------------------

--
-- Structure de la table `cv_language`
--

CREATE TABLE IF NOT EXISTS `cv_language` (
  `id` int(11) NOT NULL,
  `id_cv` int(11) NOT NULL,
  `name_language` varchar(255) NOT NULL,
  `level_language` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cv_language`
--

INSERT INTO `cv_language` (`id`, `id_cv`, `name_language`, `level_language`) VALUES
(1, 1, 'English', 70);

-- --------------------------------------------------------

--
-- Structure de la table `cv_project`
--

CREATE TABLE IF NOT EXISTS `cv_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cv` int(11) NOT NULL,
  `name_project` varchar(128) NOT NULL,
  `describe_project` varchar(128) NOT NULL,
  `avatar_project` varchar(128) DEFAULT NULL,
  `detailed_pic` varchar(128) DEFAULT NULL,
  `link_project` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Contenu de la table `cv_project`
--

INSERT INTO `cv_project` (`id`, `id_cv`, `name_project`, `describe_project`, `avatar_project`, `detailed_pic`, `link_project`) VALUES
(6, 2, 'Huyen thoai vl', 'Website game in company', '/public/static/uploads/cv1/sp1.jpg', '/public/static/uploads/project/sp1-big.jpg', 'http://huyenthoaivl.vn/home'),
(7, 2, 'Chien Than Xich Bich', 'Website game in company', '/public/static/uploads/cv1/sp2.jpg', '/public/static/uploads/project/sp2-big.jpg', 'http://xichbich.aivo.vn/home.html'),
(8, 2, 'Dai Anh Hung', 'Website game in company', '/public/static/uploads/cv1/sp3.jpg', '/public/static/uploads/project/sp3-big.jpg', 'http://daianhhung.vn/home'),
(9, 2, 'Cuu Am Chan Kinh', 'Website game in company', '/public/static/uploads/cv1/sp9.jpg', '/public/static/uploads/project/sp9-big.jpg', 'http://cuuam.gosu.vn/home/'),
(10, 2, 'Cuu Am Truyen Ky', 'Website game in company', '/public/static/uploads/cv1/sp8.jpg', '/public/static/uploads/project/sp8-big.jpg', 'http://cuuamtruyenky.vn/home.html'),
(88, 1, 'Huyen thoai Vo Lam', 'website in company', 'sp161.jpg', 'sp1-big623.jpg', 'http://huyenthoaivl.vn/home'),
(89, 1, 'Chien Than Xich Bich', 'website of company', 'sp232.jpg', 'sp2-big32.jpg', 'http://xichbich.aivo.vn/home.html'),
(90, 1, 'Cuu Am Chan Kinh', 'website of company', 'sp911.jpg', 'sp9-big211.jpg', 'http://cuuam.gosu.vn/home/'),
(91, 1, 'Dai Anh Hung', 'website of company', 'sp312.jpg', 'sp3-big12.jpg', 'http://daianhhung.vn/home'),
(92, 1, 'Cửu Âm Truyền Kỳ', 'website of company', 'sp312.jpg', 'sp8-big2.jpg', 'http://cuuamtruyenky.vn/home');

-- --------------------------------------------------------

--
-- Structure de la table `cv_skill`
--

CREATE TABLE IF NOT EXISTS `cv_skill` (
  `id` int(11) NOT NULL,
  `id_cv` int(11) NOT NULL,
  `name_skill` varchar(128) NOT NULL,
  `level_skill` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cv_skill`
--

INSERT INTO `cv_skill` (`id`, `id_cv`, `name_skill`, `level_skill`) VALUES
(1, 1, 'PHP', 50),
(2, 1, 'HTML5', 80),
(3, 1, 'CSS3', 80),
(4, 1, 'Photoshop', 80);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cat` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `img_avatar` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `editor_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `id_cat`, `tittle`, `content`, `detail`, `date_create`, `date_update`, `img_avatar`, `active`, `editor_id`, `creator_id`, `code`) VALUES
(7, 4, 'CSS LÀ GÌ VÀ VAI TRÒ CỦA NÓ TRÊN WEBSITE', 'CSS là chữ viết tắt của Cascading Style Sheets, nó là một ngôn ngữ được sử dụng để tìm và định dạng lại các phần tử được tạo ra bởi các ngôn ngữ đánh dấu (ví dụ như HTML).', '<p><strong>CSS</strong>&nbsp;l&agrave; chữ viết tắt của Cascading Style Sheets, n&oacute; l&agrave; một ng&ocirc;n ngữ được sử dụng để&nbsp;<strong>t&igrave;m v&agrave; định dạng</strong>&nbsp;lại c&aacute;c phần tử&nbsp;được tạo ra bởi c&aacute;c ng&ocirc;n ngữ đ&aacute;nh dấu (v&iacute; dụ như HTML). Bạn c&oacute; thể hiểu đơn giản rằng, nếu HTML đ&oacute;ng vai tr&ograve; định dạng c&aacute;c phần tử tr&ecirc;n website như việc tạo ra c&aacute;c đoạn văn bản, c&aacute;c ti&ecirc;u đề, bảng,&hellip;th&igrave; CSS sẽ gi&uacute;p ch&uacute;ng ta c&oacute; thể th&ecirc;m một ch&uacute;t &ldquo;phong c&aacute;ch&rdquo; v&agrave;o c&aacute;c phần tử&nbsp;HTML đ&oacute; như đổi m&agrave;u sắc trang, đổi m&agrave;u chữ, thay đổi cấu tr&uacute;c,&hellip;rất nhiều.</p>\r\n\r\n<p style="margin-left:200px"><img alt="" src="http://localhost/projectphp/core/public/static/uploads/images/tin/css_banner.jpg" style="height:300px; width:450px" /></p>\r\n\r\n<p>Phương thức hoạt động của CSS l&agrave; n&oacute; sẽ t&igrave;m dựa v&agrave;o c&aacute;c v&ugrave;ng chọn, v&ugrave;ng chọn c&oacute; thể l&agrave; t&ecirc;n một thẻ HTML, t&ecirc;n một ID, class hay nhiều kiểu kh&aacute;c. Sau đ&oacute; l&agrave; n&oacute; sẽ &aacute;p dụng c&aacute;c thuộc t&iacute;nh cần thay đổi l&ecirc;n v&ugrave;ng chọn đ&oacute;.</p>\r\n\r\n<h3>Cấu tr&uacute;c một đoạn CSS</h3>\r\n\r\n<p>Nghĩa l&agrave; n&oacute; sẽ được khai b&aacute;o bằng v&ugrave;ng chọn, sau đ&oacute; c&aacute;c thuộc t&iacute;nh v&agrave; gi&aacute; trị sẽ nằm b&ecirc;n trong cặp dấu ngoặc nhọn {}. Mỗi thuộc t&iacute;nh sẽ lu&ocirc;n c&oacute; một gi&aacute; trị ri&ecirc;ng, gi&aacute; trị c&oacute; thể l&agrave; dạng số, hoặc c&aacute;c t&ecirc;n gi&aacute; trị trong danh s&aacute;ch c&oacute; sẵn của CSS. Phần gi&aacute; trị v&agrave; thuộc t&iacute;nh phải được c&aacute;ch nhau bằng dấu hai chấm, v&agrave; mỗi một d&ograve;ng khai b&aacute;o thuộc t&iacute;nh sẽ lu&ocirc;n c&oacute; dấu chấm phẩy ở cuối. Một v&ugrave;ng chọn c&oacute; thể sử dụng kh&ocirc;ng giới hạn thuộc t&iacute;nh.</p>\r\n\r\n<p>Về danh s&aacute;ch c&aacute;c thuộc t&iacute;nh của CSS bạn c&oacute; thể xem qua&nbsp;<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/Reference" rel="nofollow external noopener noreferrer" target="_blank" title="CSS Reference"><strong>CSS Reference của Mozilla</strong></a>.</p>\r\n\r\n<h3>Lời kết</h3>\r\n\r\n<p>Mở đầu serie th&igrave; m&igrave;nh chỉ muốn giới thiệu sơ lược qua về CSS để bạn biết r&otilde; ch&uacute;ng ta đang học c&aacute;i g&igrave; v&agrave; n&oacute; sẽ được ứng dụng như thế n&agrave;o. Ở b&agrave;i sau, ch&uacute;ng ta sẽ t&igrave;m hiểu về c&aacute;c c&aacute;ch nh&uacute;ng CSS v&agrave;o website như thế n&agrave;o để n&oacute; bắt đầu hoạt động nh&eacute;.</p>\r\n', '0000-00-00 00:00:00', '2017-10-16 12:18:18', 'css_banner.jpg', 1, 0, 0, ''),
(8, 2, 'TRIỂN KHAI OOCSS DỄ DÀNG VỚI SASS', 'Như trong bài viết cách quản lý CSS tối ưu thì mình đã nhắc qua về kỹ thuật viết CSS theo kỹ thuật OOCSS (CSS hướng đối tượng) nhằm giúp hạn chế khả năng trùng lặp CSS, cũng như dễ bảo dưỡng nếu sau này có nhu cầu sửa lại.', '<p>Như trong b&agrave;i viết&nbsp;<a href="https://thachpham.com/web-development/html-css/cac-ky-thuat-quan-ly-css-toi-uu.html">c&aacute;ch quản l&yacute; CSS tối ưu</a>&nbsp;th&igrave; m&igrave;nh đ&atilde; nhắc qua về kỹ thuật viết CSS theo kỹ thuật OOCSS (CSS hướng đối tượng) nhằm gi&uacute;p hạn chế khả năng tr&ugrave;ng lặp CSS, cũng như dễ bảo dưỡng nếu sau n&agrave;y c&oacute; nhu cầu sửa lại.</p>\r\n\r\n<p>Thế nhưng bản th&acirc;n m&igrave;nh l&uacute;c mới &aacute;p dụng OOCSS cũng cảm thấy c&oacute; một kh&oacute; khăn rất lớn đ&oacute; l&agrave; m&igrave;nh kh&ocirc;ng thể biết phần n&agrave;o được t&aacute;i sử dụng lại để đưa n&oacute; v&agrave;o một đối tượng chung. Th&agrave;nh ra rất mất thời gian trong việc l&ecirc;n kế hoạch viết đối tượng CSS. V&agrave; trong b&agrave;i n&agrave;y, m&igrave;nh sẽ hướng dẫn c&aacute;c bạn một t&iacute;nh năng trong&nbsp;<a href="https://thachpham.com/web-development/html-css/huong-dan-su-dung-sass-de-viet-css.html">SASS</a>đ&oacute; l&agrave; sử dụng quy tắc kế thừa (<code>@extend</code>) với v&ugrave;ng chọn&nbsp;<code>%name</code>&nbsp;để viết OOCSS m&agrave; kh&ocirc;ng cần suy nghĩ nhiều.</p>\r\n\r\n<p><strong>N&ecirc;n xem trước:</strong>&nbsp;<a href="https://thachpham.com/web-development/html-css/huong-dan-su-dung-sass-de-viet-css.html">Hướng dẫn sử dụng SASS</a>.</p>\r\n\r\n<h3>OOCSS l&agrave; g&igrave;?</h3>\r\n\r\n<p>Trước khi hướng dẫn m&igrave;nh cũng xin nhắc lại một x&iacute;u về kỹ thuật n&agrave;y.&nbsp;<strong>OOCSS</strong>&nbsp;nghĩa l&agrave; kỹ thuật gom nh&oacute;m nhiều phần tử tr&ecirc;n website v&agrave;o sử dụng chung một đoạn CSS nếu n&oacute; c&oacute; c&aacute;c t&iacute;nh chất giống nhau. Sau đ&oacute; ở mỗi phần tử con, ch&uacute;ng ta c&oacute; thể th&ecirc;m c&aacute;c style ri&ecirc;ng cho n&oacute; nếu cần tuỳ biến lại. V&iacute; dụ dưới đ&acirc;y l&agrave; CSS kh&ocirc;ng sử dụng OOCSS:</p>\r\n\r\n<pre>\r\n.box1 {\r\n&nbsp; width: 25%;\r\n&nbsp; background: red;\r\n&nbsp; height: 150px;\r\n&nbsp; float: left;\r\n}\r\n.box2 {\r\n&nbsp; width: 25%;\r\n&nbsp; background: blue;\r\n&nbsp; height: 150px;\r\n&nbsp; float: left;\r\n}\r\n</pre>\r\n\r\n<p>Như bạn thấy giữa .box1 v&agrave; .box2 n&oacute; c&oacute; c&aacute;c thuộc t&iacute;nh ho&agrave;n to&agrave;n giống nhau như&nbsp;<code>width</code>,&nbsp;<code>height</code>&nbsp;v&agrave;&nbsp;<code>float</code>. N&ecirc;n thay v&igrave; viết lại ở mỗi phần tử, ch&uacute;ng ta c&oacute; thể gom n&oacute; v&agrave;o một class chung n&agrave;o đ&oacute; rồi ở c&aacute;c class ri&ecirc;ng bạn c&oacute; thể chỉ cần th&ecirc;m&nbsp;<code>background</code>&nbsp;cho n&oacute; m&agrave; th&ocirc;i.</p>\r\n\r\n<p>Trước ti&ecirc;n l&agrave; ta phải sửa HTML để sử dụng hai class.</p>\r\n\r\n<pre>\r\n&nbsp; </pre>\r\n\r\n<div class="box box1">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="box box2">&nbsp;</div>\r\n\r\n<p>Rồi b&acirc;y giờ ch&uacute;ng ta sẽ cần viết CSS theo hướng OOCSS như sau:</p>\r\n\r\n<pre>\r\n.box {\r\n&nbsp; width: 25%;\r\n&nbsp; height: 150px;\r\n&nbsp; float: left;\r\n}\r\n\r\n.box1 { background: red }\r\n.box2 { background: blue }\r\n</pre>\r\n\r\n<p>Nh&igrave;n n&oacute; th&ocirc;ng minh hơn v&agrave; gọn g&agrave;ng hơn phải kh&ocirc;ng n&agrave;o?</p>\r\n\r\n<p>Hoặc bạn cũng c&oacute; thể viết th&agrave;nh kiểu n&agrave;y nếu bạn kh&ocirc;ng muốn sử dụng nhiều class.</p>\r\n\r\n<pre>\r\n.box1, .box2 {\r\n&nbsp; width: 25%;\r\n&nbsp; height: 150px;\r\n&nbsp; float: left;\r\n}\r\n.box1 { background: red }\r\n.box2 { background: blue }\r\n</pre>\r\n\r\n<p>Nhưng như m&igrave;nh n&oacute;i ở tr&ecirc;n rồi đ&oacute;, l&agrave;m thế n&agrave;o m&agrave; bạn c&oacute; thể tưởng tượng ra trong dự &aacute;n của bạn c&oacute; bao nhi&ecirc;u phần tử c&oacute; c&ugrave;ng thuộc t&iacute;nh, hay mỗi lần viết CSS l&agrave; bạn phải d&ograve; lại code của m&igrave;nh để nh&eacute;t n&oacute; v&agrave;o vị tr&iacute; th&iacute;ch hợp? Đ&uacute;ng l&agrave; &aacute;c mộng m&agrave;!</p>\r\n\r\n<h3>OOCSS dễ d&agrave;ng hơn với SASS</h3>\r\n\r\n<p>Thay v&igrave; phải d&ograve; đi d&ograve; lại dự &aacute;n của m&igrave;nh khi viết OOCSS, hay tốn qu&aacute; nhiều thời gian cho việc l&ecirc;n kế hoạch th&igrave; bạn c&oacute; thể l&agrave;m mọi thứ dễ d&agrave;ng hơn với SASS. Chỉ cần c&aacute;c bạn khai b&aacute;o c&aacute;c v&ugrave;ng chọn&nbsp;<code>%name</code>&nbsp;cho từng đối tượng trong một tập tin n&agrave;o đ&oacute; như&nbsp;<code>_object.scss</code>&nbsp;chẳng hạn, sau đ&oacute; import v&agrave;o tập tin CSS ch&iacute;nh của bạn rồi tiến h&agrave;nh kế thừa n&oacute;. Kiểu thế n&agrave;y:</p>\r\n\r\n<pre>\r\n/* Khai b&aacute;o đối tượng */\r\n%box {\r\n&nbsp; width: 25%;\r\n&nbsp; height: 150px;\r\n&nbsp; float: left;\r\n}\r\n\r\n/* Sử dụng đối tượng %box */\r\n.box1 {\r\n&nbsp; background: red;\r\n&nbsp; @extend %box;\r\n}\r\n.box2 {\r\n&nbsp; @extend %box;\r\n&nbsp; background: blue;\r\n}\r\n.box3 {\r\n&nbsp; @extend %box;\r\n&nbsp; background: green;\r\n}\r\n.box4 {\r\n&nbsp; @extend %box;\r\n&nbsp; background: black;\r\n}\r\n</pre>\r\n\r\n<p>V&agrave; khi xuất CSS ra n&oacute; sẽ tr&ocirc;ng như thế n&agrave;y:</p>\r\n\r\n<pre>\r\n.box1, .box2, .box3, .box4 {\r\n&nbsp; width: 25%;\r\n&nbsp; height: 150px;\r\n&nbsp; float: left;\r\n}\r\n\r\n.box1 {\r\n&nbsp; background: red;\r\n}\r\n\r\n.box2 {\r\n&nbsp; background: blue;\r\n}\r\n\r\n.box3 {\r\n&nbsp; background: green;\r\n}\r\n\r\n.box4 {\r\n&nbsp; background: black;\r\n}\r\n</pre>\r\n\r\n<p>Như bạn thấy, c&aacute;c class .box1, .box2, .box3 v&agrave; .box4 đ&atilde; được gom nh&oacute;m lại để sử dụng chung một CSS khi sử dụng&nbsp;<code>@extend</code>. Điều n&agrave;y n&oacute; cũng giống như bạn tạo một class t&ecirc;n box rồi d&ugrave;ng chung cho c&aacute;c phần tử nhưng nếu d&ugrave;ng SASS th&igrave; n&ecirc;n d&ugrave;ng thế n&agrave;y sẽ tốt hơn rất nhiều.</p>\r\n\r\n<p><a href="http://sassmeister.com/gist/0e0a3995e1626c97a159" rel="nofollow external noopener noreferrer" target="_blank">Xem v&iacute; dụ v&agrave; kết quả</a></p>\r\n\r\n<p>Chỉ vậy th&ocirc;i, rất đơn giản đ&uacute;ng kh&ocirc;ng n&agrave;o? V&agrave; như m&igrave;nh c&oacute; n&oacute;i ở tr&ecirc;n, bạn n&ecirc;n đưa c&aacute;c đoạn khai b&aacute;o v&ugrave;ng chọn %name v&agrave;o một tập tin ri&ecirc;ng để dễ quản l&yacute; về sau nh&eacute;.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p style="text-align:right">Theo<span style="background-color:null">&nbsp;</span><span style="color:#e74c3c">freetuts.net</span></p>\r\n', '0000-00-00 00:00:00', '2017-10-13 11:18:23', 'oocss-585x390.png', 1, 0, 0, 'trien-khai-oscss'),
(9, 4, 'CSS3 Gradient Background', 'CSS3 Gradient Background', '<p>Trong Photoshop bạn c&oacute; thể tạo một h&igrave;nh ảnh với nhiều m&agrave;u sắc v&agrave; ch&uacute;ng trộn lẫn với nhau nh&igrave;n rất bắt mắt như h&igrave;nh dưới đ&acirc;y.</p>\r\n\r\n<p><img alt="" src="https://freetuts.net/upload/tut_post/images/2015/10/24/480/hoc-gradient-css3.png" /></p>\r\n\r\n<p>Th&igrave; bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m điều n&agrave;y trong CSS3 &nbsp;bằng c&aacute;ch sử dụng thuộc t&iacute;nh background k&ecirc;t hợp với gi&aacute; trị&nbsp;<strong>Gradient</strong>.</p>\r\n\r\n<p>Trong CSS3 hỗ trợ hai loại Gradient:</p>\r\n\r\n<ul>\r\n	<li>Linear Gradients (K&eacute;o theo c&aacute;c vị tr&iacute; l&ecirc;n, xuống, tr&aacute;i, phải, đường ch&eacute;o)</li>\r\n	<li>Radial Gradients (K&eacute;o tại vị tr&iacute; do lập tr&igrave;nh vi&ecirc;n chọn v&agrave;&nbsp;lan tỏa ra tứ ph&iacute;a theo một h&igrave;nh n&agrave;o đ&oacute; (<em>v&iacute; dụ ellipse</em>))1. Linear Gradients trong CSS3</li>\r\n	<li>\r\n	<h2>1. Linear Gradients trong CSS3</h2>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&uacute; ph&aacute;p</strong>:</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>1</p>\r\n				</td>\r\n				<td>\r\n				<p><code>background : linear-gradient(direction, color</code><code>1</code><code>, color</code><code>2</code><code>, color</code><code>3</code><code>, color</code><code>4</code><code>, ...)</code></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Trong đ&oacute;&nbsp;<code>direction</code>&nbsp;gồm c&aacute;c gi&aacute; trị:&nbsp;</p>\r\n	</li>\r\n	<li>Gi&aacute; trị đơn&nbsp;<code>to top</code>&nbsp;hoặc&nbsp;<code>to left</code>&nbsp;hoặc&nbsp;<code>to right</code>&nbsp;hoặc&nbsp;<code>to bottom</code>&nbsp;th&igrave; n&oacute; sẽ k&eacute;o theo cạnh đối diện</li>\r\n	<li>Gi&aacute; trị đ&ocirc;i (<code>to top&nbsp;left</code>) hoặc (<code>to left&nbsp;right</code>) nếu bạn muốn chỉ r&otilde; k&eacute;o từ cạnh n&agrave;o sang cạnh n&agrave;o (<em>tức l&agrave; đường ch&eacute;o</em>)</li>\r\n	<li>\r\n	<p>Nếu ta kh&ocirc;ng truyền&nbsp;<code>direction</code>&nbsp;th&igrave; theo mặc định n&oacute; sẽ c&oacute; gi&aacute; trị&nbsp;<code>top</code>&nbsp;(<em>tức l&agrave;&nbsp;<strong>top - bottom</strong></em>)</p>\r\n\r\n	<p><strong>Tương tự ch&uacute;ng ta c&oacute; code Hack CSS như sau</strong>:</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>1</p>\r\n\r\n				<p>2</p>\r\n\r\n				<p>3</p>\r\n				</td>\r\n				<td>\r\n				<p><code>background: -webkit-linear-gradient(direction, color1, color2, color3, color4, ...); </code><code>/* For Safari 5.1 to 6.0 */</code></p>\r\n\r\n				<p><code>background: -o-linear-gradient(direction, color1, color2, color3, color4, ...); </code><code>/* For Opera 11.1 to 12.0 */</code></p>\r\n\r\n				<p><code>background: -moz-linear-gradient(direction, color1, color2, color3, color4, ...); </code><code>/* For Firefox 3.6 to 15 */</code></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>C&oacute; một lưu &yacute; l&agrave; đối với code Hack CSS th&igrave;&nbsp;<code>direction</code>&nbsp;kh&ocirc;ng c&oacute; chữ&nbsp;<code>to</code>.</p>\r\n\r\n	<p><strong>V&iacute; dụ</strong>:&nbsp;<a href="https://freetuts.net/editor.html?id=510" rel="nofollow" target="_blank">XEM DEMO</a></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>1</p>\r\n\r\n				<p>2</p>\r\n\r\n				<p>3</p>\r\n\r\n				<p>4</p>\r\n\r\n				<p>5</p>\r\n\r\n				<p>6</p>\r\n\r\n				<p>7</p>\r\n\r\n				<p>8</p>\r\n\r\n				<p>9</p>\r\n\r\n				<p>10</p>\r\n\r\n				<p>11</p>\r\n\r\n				<p>12</p>\r\n\r\n				<p>13</p>\r\n\r\n				<p>14</p>\r\n\r\n				<p>15</p>\r\n\r\n				<p>16</p>\r\n\r\n				<p>17</p>\r\n\r\n				<p>18</p>\r\n\r\n				<p>19</p>\r\n\r\n				<p>20</p>\r\n\r\n				<p>21</p>\r\n\r\n				<p>22</p>\r\n\r\n				<p>23</p>\r\n\r\n				<p>24</p>\r\n\r\n				<p>25</p>\r\n\r\n				<p>26</p>\r\n\r\n				<p>27</p>\r\n				</td>\r\n				<td>\r\n				<p><code>div{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>float : </code><code>left</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>width</code><code>: </code><code>200px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>height</code><code>: </code><code>100px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>margin</code><code>: </code><code>10px</code><code>;</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>1</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(</code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>2</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(to </code><code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>3</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(to </code><code>right</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>right</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>right</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>right</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>4</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(to </code><code>bottom</code> <code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>bottom</code> <code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>bottom</code> <code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>bottom</code> <code>left</code><code>, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Kết quả</strong>:</p>\r\n\r\n	<p><img alt="" src="https://freetuts.net/upload/tut_post/images/2015/10/24/480/gradient-linear-example.png" /></p>\r\n\r\n	<h3>Sử dụng Angles:</h3>\r\n\r\n	<p>Bạn c&oacute; th&ecirc;m sự lựa chọn đ&oacute; l&agrave; sử dụng g&oacute;c thay v&igrave; x&aacute;c định&nbsp;hướng (to left, to right ...) bằng c&aacute;ch sử dụng c&uacute; ph&aacute;p sau:</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>1</p>\r\n				</td>\r\n				<td>\r\n				<p><code>background</code><code>: linear-gradient(angle, color-stop</code><code>1</code><code>, color-stop</code><code>2</code><code>);</code></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Trong đ&oacute; Angle l&agrave; g&oacute;c x&aacute; định giữa đường ngang v&agrave; đường Gradient đi ngược chiều của kim đồng hồ. Hay n&oacute;i c&aacute;ch kh&aacute;c 0deg sẽ tạo bottom to top Gradient, 90deg sẽ tạo left to right Gradient.</p>\r\n\r\n	<p><strong>V&iacute; dụ</strong>:&nbsp;<a href="https://freetuts.net/editor.html?id=511" rel="nofollow" target="_blank">XEM DEMO</a></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>1</p>\r\n\r\n				<p>2</p>\r\n\r\n				<p>3</p>\r\n\r\n				<p>4</p>\r\n\r\n				<p>5</p>\r\n\r\n				<p>6</p>\r\n\r\n				<p>7</p>\r\n\r\n				<p>8</p>\r\n\r\n				<p>9</p>\r\n\r\n				<p>10</p>\r\n\r\n				<p>11</p>\r\n\r\n				<p>12</p>\r\n\r\n				<p>13</p>\r\n\r\n				<p>14</p>\r\n\r\n				<p>15</p>\r\n\r\n				<p>16</p>\r\n\r\n				<p>17</p>\r\n\r\n				<p>18</p>\r\n\r\n				<p>19</p>\r\n\r\n				<p>20</p>\r\n\r\n				<p>21</p>\r\n\r\n				<p>22</p>\r\n\r\n				<p>23</p>\r\n\r\n				<p>24</p>\r\n\r\n				<p>25</p>\r\n\r\n				<p>26</p>\r\n\r\n				<p>27</p>\r\n\r\n				<p>28</p>\r\n\r\n				<p>29</p>\r\n\r\n				<p>30</p>\r\n				</td>\r\n				<td>\r\n				<p><code>div{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>float : </code><code>left</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>width</code><code>: </code><code>200px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>height</code><code>: </code><code>100px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>margin</code><code>: </code><code>10px</code><code>;</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>1</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(</code><code>0</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>0</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>0</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>0</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>2</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(</code><code>90</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>90</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>90</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>90</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>3</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(</code><code>180</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>180</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>180</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>180</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n\r\n				<p><code>#div</code><code>4</code><code>{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(</code><code>360</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>360</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>360</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>360</code><code>deg, </code><code>red</code><code>, yellow);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Kết quả</strong>:</p>\r\n\r\n	<p><img alt="" src="https://freetuts.net/upload/tut_post/images/2015/10/24/480/gradient-engles-example.png" /></p>\r\n\r\n	<h3>Sử dụng nhiều m&agrave;u:</h3>\r\n\r\n	<p>Nếu bạn muốn trộn nhiều m&agrave;u với nhau th&igrave; chỉ việc bổ sung m&agrave;u v&agrave;o thuộc t&iacute;nh Gradient, nhưng bạn phải lưu &yacute; rằng thứ tự m&agrave;u phải được sắp xếp cho đ&uacute;ng nh&eacute;.</p>\r\n\r\n	<p><strong>V&iacute; dụ</strong>:&nbsp;<a href="https://freetuts.net/editor.html?id=512" rel="nofollow" target="_blank">XEM DEMO</a></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>1</p>\r\n\r\n				<p>2</p>\r\n\r\n				<p>3</p>\r\n\r\n				<p>4</p>\r\n\r\n				<p>5</p>\r\n\r\n				<p>6</p>\r\n\r\n				<p>7</p>\r\n\r\n				<p>8</p>\r\n\r\n				<p>9</p>\r\n\r\n				<p>10</p>\r\n				</td>\r\n				<td>\r\n				<p><code>div{</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>float : </code><code>left</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>width</code><code>: </code><code>300px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>height</code><code>: </code><code>200px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>margin</code><code>: </code><code>10px</code><code>;</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : linear-gradient(to </code><code>bottom</code><code>, </code><code>red</code><code>, yellow, pink, </code><code>blue</code><code>, </code><code>green</code><code>);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -moz-linear-gradient(</code><code>bottom</code><code>, </code><code>red</code><code>, yellow, pink, </code><code>blue</code><code>, </code><code>green</code><code>);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -webkit-linear-gradient(</code><code>bottom</code><code>, </code><code>red</code><code>, yellow, pink, </code><code>blue</code><code>, </code><code>green</code><code>);</code></p>\r\n\r\n				<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>background : -o-linear-gradient(</code><code>bottom</code><code>, </code><code>red</code><code>, yellow, pink, </code><code>blue</code><code>, </code><code>green</code><code>);</code></p>\r\n\r\n				<p><code>}</code></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Kết quả</strong>:</p>\r\n\r\n	<p><img alt="" src="https://freetuts.net/upload/tut_post/images/2015/10/24/480/gradient-multiple.png" /></p>\r\n\r\n	<h3>Sử dụng&nbsp;Transparency:</h3>\r\n\r\n	<p>Ở b&agrave;i t&igrave;m hiểu&nbsp;<a href="https://freetuts.net/hoc-css3-dinh-dang-mau-sac-479.html" title="Color trong CSS3">Color trong CSS3</a>&nbsp;ch&uacute;ng ta đ&atilde; học c&aacute;ch sử dụng HSLA Color hoặc&nbsp;RGBA Color để tạo độ trong suốt, vậy th&igrave; ch&uacute;ng ta cũng c&oacute; thể kết hợp n&oacute; trong Gradient để tạo độ trong suốt.</p>\r\n	</li>\r\n</ul>\r\n', '0000-00-00 00:00:00', '2017-10-16 12:17:45', 'oocss-585x3906.png', 1, 0, 0, ''),
(10, 4, 'Thương hiệu cá nhân Dev quan trọng hơn bạn tưởng', 'Thuê một Developer có tham vọng tuy ít kinh nghiệm, Hắn ta sẽ học rất nhanh, quan tâm đến công việc và vui thú với nó. Tôi đã từng làm việc với cả 2 loại và tôi luôn tuyển người có tham vọng hơn là kinh nghiệm', '<p>Từ khi chia sẻ th&ecirc;m tr&ecirc;n c&aacute;c k&ecirc;nh kh&aacute;c(như blog.TechTalk.vn chẳng hạn:) ), t&ocirc;i ch&uacute; &yacute; thấy traffic của blog v&agrave; t&agrave;i khoản mạng x&atilde; hội của m&igrave;nh tăng l&ecirc;n. Cũng kh&ocirc;ng nhiều lắm nhưng đ&oacute; thật sự l&agrave; động lực v&agrave; khuyến kh&iacute;ch t&ocirc;i!</p>\r\n\r\n<p>Điều n&agrave;y khiến t&ocirc;i suy nghĩ đến hiện tại v&agrave; thấy rằng t&ocirc;i đ&atilde; bỏ b&ecirc; một thứ từ bấy l&acirc;u nay: Thương hiệu c&aacute; nh&acirc;n</p>\r\n\r\n<p>T&ocirc;i đang c&oacute; một c&ocirc;ng việc kh&aacute; tốt v&agrave; kh&ocirc;ng c&oacute; nhu cầu t&igrave;m việc. Nhưng t&ocirc;i đ&atilde; đ&aacute;nh gi&aacute; thấp tầm quan trọng của sự hiện diện tr&ecirc;n online của m&igrave;nh</p>\r\n\r\n<p>V&agrave; rồi v&agrave;o tuần trước, sự ng&acirc;y thơ của t&ocirc;i đ&atilde; được chứng minh.</p>\r\n\r\n<p>C&ocirc;ng ty của t&ocirc;i đang tuyển v&agrave;i vị tr&iacute; v&agrave; nhận được lượng lớn ứng vi&ecirc;n. T&ocirc;i thực sự ngạc nhi&ecirc;n khi nh&igrave;n thấy sếp t&igrave;m tr&ecirc;n Google t&ecirc;n của c&aacute;c ứng vi&ecirc;n để đ&aacute;nh gi&aacute; sự hiện diện online của họ</p>\r\n\r\n<p>Sếp sử dụng c&aacute;ch n&agrave;y để t&igrave;m kiếm sự đ&oacute;ng g&oacute;p t&iacute;ch cực v&agrave; th&ocirc;ng tin. &Ocirc;ng kh&ocirc;ng t&igrave;m tr&ecirc;n Facebook để t&igrave;m xem ứng vi&ecirc;n khoe g&igrave; v&agrave;o tối thứ S&aacute;u đ&acirc;u. V&agrave; &ocirc;ng c&ograve;n th&iacute;ch th&uacute; hơn khi nh&igrave;n thấy:</p>\r\n\r\n<ul>\r\n	<li>Ứng vi&ecirc;n c&oacute; viết blog hay kh&ocirc;ng?</li>\r\n	<li>C&oacute; sở th&iacute;ch đặc biệt kh&ocirc;ng?</li>\r\n	<li>C&oacute; dự &aacute;n tham vọng n&agrave;o ngo&agrave;i c&ocirc;ng việc kh&ocirc;ng?</li>\r\n</ul>\r\n\r\n<p>T&ocirc;i chắc c&uacute; rằng đối với c&aacute;c c&ocirc;ng ty kh&aacute;c, đ&acirc;y l&agrave; một c&acirc;u chuyện kh&aacute;c biệt.</p>\r\n\r\n<p>N&oacute; khiến t&ocirc;i phải nghĩ về thương hiệu c&aacute; nh&acirc;n của ch&iacute;nh m&igrave;nh v&agrave; truyền cảm hứng cho&nbsp;t&ocirc;i bắt tay v&agrave;o đại tu vẻ đẹp chai tr&ecirc;n online. Đ&acirc;y l&agrave; v&agrave;i thứ t&ocirc;i đ&atilde; l&agrave;m, một v&agrave;i quan s&aacute;t t&ocirc;i đ&atilde; l&agrave; v&agrave; v&agrave;i bước đơn giản m&agrave; t&ocirc;i tin rằng bạn cũng cần phải l&agrave;m.</p>\r\n\r\n<h3>Bắt đầu viết blog</h3>\r\n\r\n<p>Nếu bạn đ&atilde; c&oacute; sẵn, h&atilde;y mua một t&ecirc;n miền {t&ecirc;n của bạn}.com. Nếu kh&ocirc;ng thể lấy .com th&igrave; c&oacute; thể mua .co, .tech, .blog cũng được.</p>\r\n\r\n<p>Một t&ecirc;n miền hay sẽ rất tốt nếu muốn x&acirc;y dựng một doanh nghiệp, nhưng x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n th&igrave; n&oacute; cần phải c&aacute; nh&acirc;n h&oacute;a</p>\r\n\r\n<p>Việc n&agrave;y kh&ocirc;ng li&ecirc;n quan đến việc bạn c&oacute; 1000 traffic v&agrave;o website hay kh&ocirc;ng, n&oacute; li&ecirc;n quan đến x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n. Thực ra người ta &iacute;t khi v&agrave;o trang web của bạn, nhưng khi nh&agrave; tuyển dụng cần t&igrave;m bạn tr&ecirc;n online bằng c&aacute;ch g&otilde; t&ecirc;n bạn tr&ecirc;n google, th&igrave; h&atilde;y l&oacute; mặt ra đầu ti&ecirc;n.</p>\r\n\r\n<p>Blog của bạn kh&ocirc;ng nhất thiết phải h&agrave;o nho&aacute;ng hay xa xỉ. Một c&aacute;i blog bằng Wordpress với theme miễn ph&iacute; đ&atilde; qu&aacute; đủ để bạn bắt đầu. (C&ograve;n nếu bạn kh&ocirc;ng muốn tốn th&ecirc;m thời gian,&nbsp;chỉ cần đăng nhập bằng Facebook tr&ecirc;n https://blog.techtalk.vn l&agrave; đ&atilde; c&oacute; thể viết blog.)</p>\r\n\r\n<p>Việc n&agrave;y cũng kh&ocirc;ng thể hiện rằng bạn khoe mẽ c&aacute;c kỹ năng hoặc c&aacute;c dự &aacute;n, n&oacute; thực sự chỉ l&agrave; để mọi người c&oacute; thể t&igrave;m ra bạn tr&ecirc;n online, thấy mọi thứ về bạn v&agrave; li&ecirc;n hệ khi cần.</p>\r\n\r\n<p>Đừng qu&aacute; ch&uacute; trọng v&agrave;o những c&acirc;u từ hoặc bỏ ra h&agrave;ng giờ mỗi ng&agrave;y để chăm s&oacute;c blog. Chỉ n&ecirc;n l&agrave;m khi n&agrave;o rảnh, cuối tuần, buổi tối ở nh&agrave;...Nhưng phải post đều đặn v&agrave; th&iacute;ch hợp.</p>\r\n\r\n<p>Cuối c&ugrave;ng, thử v&agrave; nhớ rằng tất cả c&aacute;c post đừng qu&aacute; nặng về kỹ thuật. Ngay cả khi bạn l&agrave; tay mơ, lu&ocirc;n c&oacute; 1 n&agrave;y, 1 tuần hoặc 1 th&aacute;ng kinh nghiệm nhiều hơn người kh&aacute;c. Ai đ&oacute; sẽ t&igrave;m thấy gi&aacute; trị trong những g&igrave; bạn n&oacute;i.</p>\r\n\r\n<p>Đừng ngại chớp lấy cơ hội để viết về bất kỳ thứ g&igrave; non-tech. Viết về th&uacute; vui hoặc l&agrave; mối quan t&acirc;m. Sử dụng blog như l&agrave; c&aacute;ch thể hiện m&igrave;nh v&agrave; quan t&acirc;m đến những vấn đề ngo&agrave;i kỹ thuật.&nbsp;<strong>Nhưng nhớ tr&aacute;nh đụng chạm c&aacute;c vấn đề g&acirc;y tranh c&atilde;i như T&ocirc;n gi&aacute;o, Ch&iacute;nh trị v&agrave; D&acirc;n tộc</strong></p>\r\n\r\n<h3>Đăng k&yacute; một t&agrave;i khoản Twitter</h3>\r\n\r\n<p>C&aacute; nh&acirc;n t&ocirc;i kh&ocirc;ng d&ugrave;ng mạng x&atilde; hội nhiều. Nhưng t&ocirc;i đ&atilde; thay đổi khi nghĩ về x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n. Mạng x&atilde; hội trở th&agrave;nh một k&ecirc;nh ph&acirc;n phối nội dung đ&aacute;ng gi&aacute;</p>\r\n\r\n<p>Twitter l&agrave; một c&aacute;ch dễ để truy cập đến rất nhiều chuy&ecirc;n gia trong cộng đồng lập tr&igrave;nh. V&iacute; dụ, t&ocirc;i đăng một b&agrave;i thể hiện quan điểm rằng m&igrave;nh th&iacute;ch th&uacute; nghi&ecirc;n cứu&nbsp;<a href="https://www.slimframework.com/" rel="noopener" target="_blank">Slim framework</a>. T&ocirc;i rất ngạc nhi&ecirc;n khi comment đầu ti&ecirc;n đến từ một trong những th&agrave;nh vi&ecirc;n x&acirc;y dựng framework đ&oacute;. Ai đ&aacute;ng gi&aacute; hơn những lời khuy&ecirc;n v&agrave; hướng dẫn từ anh ch&agrave;ng n&agrave;y.</p>\r\n\r\n<p>Cũng như l&agrave; một phần của cộng đồng, đ&oacute; l&agrave; c&aacute;ch tốt để giữ cập nhật với ng&agrave;nh c&ocirc;ng nghiệp tin tức v&agrave; sự kiện, cũng l&agrave; c&aacute;ch tốt để ph&aacute; vỡ khoảng c&aacute;ch v&agrave; ch&agrave;o hỏi nhau trước khi x&acirc;y dựng mối quan hệ c&aacute;c nh&acirc;n với ai đ&oacute; tại một hội nghị hoặc meet-up</p>\r\n\r\n<p>Nhớ rằng c&aacute;c th&ocirc;ng điệp của bạn tr&ecirc;n MXH cả thế giới đều thấy, v&igrave; vậy lu&ocirc;n nhớ rằng n&oacute; phải c&oacute; &iacute;ch, n&oacute; phải thơm, v&agrave; c&oacute; lợi &iacute;ch n&agrave;o đ&oacute; cho người đọc. Những nội dung v&ocirc; gi&aacute; trị kiểu như bạn hẹn h&ograve; ăn tối với một ai đ&oacute; sẽ l&agrave;m nhiều người un-follow bạn</p>\r\n\r\n<p>MXH l&agrave; cơ hội tốt để x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n n&ecirc;n bạn cần sử dụng cho đ&uacute;ng đắn nhưng kh&ocirc;ng k&eacute;m phần hăng h&aacute;i trong việc chia sẻ kiến thức</p>\r\n\r\n<h3>Nhất qu&aacute;n tr&ecirc;n tất cả nền tảng</h3>\r\n\r\n<p>Khi nghĩ đến bất kỳ thương hiệu n&agrave;o, bạn sẽ kết hợp logo, slogan hoặc h&igrave;nh ảnh. Thương hiệu c&aacute; nh&acirc;n cũng ch&iacute;nh x&aacute;c l&agrave; như vậy.</p>\r\n\r\n<p>Đảm bảo rằng bạn thống nhất h&igrave;nh ảnh profile của m&igrave;nh tr&ecirc;n to&agrave;n bộ c&aacute;c platform. T&ocirc;i đ&atilde; phạm một sai lầm khi để h&igrave;nh ảnh profile của m&igrave;nh kh&aacute;c nhau tr&ecirc;n Twitter v&agrave; Medium. Mọi người kh&ocirc;ng thể nhận ra&nbsp;cả hai chỉ l&agrave; một. Mục ti&ecirc;u của bạn l&agrave; để mọi người nhận ra bởi sự hiện diện của m&igrave;nh ở khắp nơi nhưng n&oacute; phải đồng nhất.</p>\r\n\r\n<h3>Bạn l&agrave; một&nbsp;<strong>Developer</strong></h3>\r\n\r\n<p>Ngay cả khi bạn l&agrave; tay mơ, c&ograve;n đang đi học hoặc mới v&agrave;o nghề, đừng ph&iacute; phạm cơ hội để c&oacute; một việc l&agrave;m tốt. Blog của bạn v&agrave; t&agrave;i khoản MXH sẽ n&oacute;i về bạn kiểu như &quot;một developer đầy khao kh&aacute;t&quot; hoặc &quot;một developer đang học hỏi&quot;</p>\r\n\r\n<p>Những g&igrave; m&agrave; c&aacute;c quản l&yacute; tuyển dụng thường l&agrave;m g&igrave; đối với những &quot;developer đầy khao kh&aacute;t&quot;? Họ sẽ kh&ocirc;ng loại bỏ bạn ở v&ograve;ng gửi xe</p>\r\n\r\n<p>Ngay cả nếu bạn l&agrave;m việc kh&ocirc;ng li&ecirc;n quan đến lập tr&igrave;nh ban ng&agrave;y v&agrave; học lập tr&igrave;nh/lập tr&igrave;nh v&agrave;o buổi tối, bạn vẫn l&agrave; một developer</p>\r\n\r\n<p>C&oacute; rất nhiều cơ hội để giải tr&igrave;nh cấp độ của bạn ở c&aacute;c v&ograve;ng tuyển dụng sau, nhưng ấn tượng đầu ti&ecirc;n thực sự quan trọng để tr&aacute;nh bị loại ở v&ograve;ng gửi xe</p>\r\n\r\n<p>Bạn l&agrave; một developer v&agrave; đang t&igrave;m kiếm một c&ocirc;ng việc của một developer v&igrave; thế cần đảm bảo rằng thương hiệu cả nh&acirc;n của m&igrave;nh cũng tập trung xoay quanh developer</p>\r\n\r\n<h3><strong>Vậy Junior ch&iacute;nh x&aacute;c nghĩa l&agrave; g&igrave;?</strong></h3>\r\n\r\n<p>T&ocirc;i nhận ra rằng tr&ecirc;n blog v&agrave; MXH m&igrave;nh c&oacute; đề cập l&agrave; &quot;junior&quot; developer. T&ocirc;i 30 tuổi v&agrave; kh&ocirc;ng c&oacute; g&igrave; chứng tỏ m&igrave;nh l&agrave; junior</p>\r\n\r\n<p>Nghĩ một c&aacute;ch nghi&ecirc;m t&uacute;c, junior chả c&oacute; &yacute; nghĩ g&igrave; cả. N&oacute; l&agrave;m giảm sự nhận thức về một c&aacute; nh&acirc;n. Một junior developer l&agrave; những developer kh&ocirc;ng c&oacute; kinh nghiệm l&agrave;m việc. Nhưng nếu ai đ&oacute; đ&atilde; từng viết code 10 năm? Họ c&oacute; l&agrave; junior(đừng khi&ecirc;m tốn)? Hoặc ai đ&oacute; c&oacute; v&agrave;i năm kinh nghiệm trong lĩnh vực thương mại điện tử nhưng chưa thực sự tốt lắm?</p>\r\n\r\n<p>Nếu bạn n&oacute;i rằng bạn l&agrave; một junior developer, h&atilde;y dừng lại. N&oacute; kh&ocirc;ng gi&uacute;p bạn tr&ocirc;ng khi&ecirc;m nhường hơn lại l&agrave;m giới hạn con đường sự nghiệp. C&aacute;c c&ocirc;ng ty hay nh&agrave; tuyển dụng nghĩ g&igrave; về chữ &quot;junior&quot;?</p>\r\n\r\n<h3>Nếu bạn l&agrave; developer trong một lĩnh vực hẹp, h&atilde;y nhấn mạnh n&oacute;</h3>\r\n\r\n<p>Tr&ecirc;n blog v&agrave; MXH t&ocirc;i n&oacute;i rằng m&igrave;nh l&agrave; &quot;web developer&quot;. V&acirc;ng, t&ocirc;i l&agrave;m c&aacute;c ứng dụng web sử dụng c&aacute;c c&ocirc;ng nghệ web. Cụ thể hơn t&ocirc;i l&agrave; PHP developer</p>\r\n\r\n<p>Tr&igrave;nh Javascript của t&ocirc;i cũng kh&ocirc;ng c&oacute; g&igrave; đặc biệt, v&igrave; thế t&ocirc;i kh&ocirc;ng t&igrave;m c&ocirc;ng việc Javascript. T&ocirc;i chỉ bỏ v&agrave;i giờ để xem c&aacute;c b&agrave;i hướng dẫn về Ruby on Rails, v&igrave; tế cũng kh&ocirc;ng t&igrave;m việc Ruby. T&ocirc;i quyết định l&agrave;m mới thương hiệu của m&igrave;nh tập trung v&agrave;o PHP developer bằng c&aacute;ch thể hiện ch&iacute;nh x&aacute;c c&aacute;c kỹ năng li&ecirc;n quan đến PHP để c&oacute; thể bắt được c&aacute;c cơ hội đ&uacute;ng đắn hơn.</p>\r\n\r\n<p><img src="https://cdn-images-1.medium.com/max/1600/1*LSyxodXagu0CQppqJAbT5Q.jpeg" style="height:394px; width:675px" /></p>\r\n\r\n<p>Logo m&agrave; t&ocirc;i d&ugrave;ng cho blog</p>\r\n\r\n<h3>Dọn dẹp t&agrave;i khoản Github của bạn</h3>\r\n\r\n<p>Một người bạn học v&agrave; t&ocirc;i c&ugrave;ng xem qua t&agrave;i khoản Github, hắn ta ngạc nhi&ecirc;n về c&aacute;ch m&agrave; t&ocirc;i hiện diện ngo&agrave;i c&ocirc;ng việc</p>\r\n\r\n<p>Cho đến khi hắn nhận ra rằng t&ocirc;i c&oacute; một t&agrave;i khoản lộn xộn nữa vời, c&aacute;c project đang dang dở. Điều đ&oacute; thực sự kh&ocirc;ng g&acirc;y ấn tượng, n&oacute; cho thấy rằng t&ocirc;i l&agrave; người kh&ocirc;ng theo đuổi c&ocirc;ng việc đến c&ugrave;ng</p>\r\n\r\n<p>Lời khuy&ecirc;n của t&ocirc;i rằng, việc active tr&ecirc;n Github l&agrave; tốt, nhưng bạn n&ecirc;n finish hết cac project v&agrave; x&oacute;a n&oacute;. Cần đảm bảo rằng bất kỳ nh&agrave; tuyển dụng n&agrave;o cũng phải thấy rằng bạn đ&atilde; ho&agrave;n th&agrave;nh mọi thứ v&agrave; bạn tự h&agrave;o về n&oacute;, chứ kh&ocirc;ng phải kiểu như &quot;đ&atilde; từng hứng th&uacute; l&agrave;m nhưng kh&ocirc;ng c&oacute; thời gian tiếp tục&quot;</p>\r\n\r\n<h4>Thể hiện sự tham vọng</h4>\r\n\r\n<p>D&ugrave;ng blog, MXH, Github v&agrave; sự hiện diện online để l&agrave;m r&otilde; n&eacute;t tham vọng của bạn.&nbsp;Bất cứ khi n&agrave;o c&oacute; thể, h&atilde;y thể hiện sự tự h&agrave;o v&agrave; sự nhiệt t&igrave;nh đối với những g&igrave; bạn l&agrave;m.</p>\r\n\r\n<p>T&ocirc;i sẽ dừng tại đ&acirc;y v&agrave; để lại c&aacute;c c&acirc;u trả lời của t&ocirc;i tr&ecirc;n StackOverFlow:&nbsp;<a href="https://softwareengineering.stackexchange.com/questions/37339/choosing-between-two-programmers-experience-vs-passion" rel="noopener" target="_blank">passion vs experience</a>.</p>\r\n\r\n<blockquote>\r\n<p>THU&Ecirc; MỘT DEVELOPER C&Oacute; THAM VỌNG TUY &Iacute;T KINH NGHIỆM, HẮN TA SẼ HỌC RẤT NHANH, QUAN T&Acirc;M ĐẾN C&Ocirc;NG VIỆC V&Agrave; VUI TH&Uacute; VỚI N&Oacute;. T&Ocirc;I Đ&Atilde; TỪNG L&Agrave;M VIỆC VỚI CẢ HAI LOẠI V&Agrave; T&Ocirc;I LU&Ocirc;N LU&Ocirc;N TUYỂN NGƯỜI C&Oacute; THAM VỌNG HƠN L&Agrave; KINH NGHIỆM</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p>NHỮNG NGƯỜI M&Agrave; KH&Ocirc;NG QUAN T&Acirc;M ĐẾN C&Ocirc;NG VIỆC SẼ TẠO NHIỀU VẤN ĐỀ V&Agrave; TRỄ DEADLINE.</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p>KHI BẠN C&Oacute; NGUỒN LỰC ĐỂ Đ&Agrave;O TẠO AI Đ&Oacute;, H&Atilde;Y TUYỂN DEVELOPER C&Oacute; THAM VỌNG HƠN L&Agrave; C&Oacute; KINH NGHIỆM&nbsp;</p>\r\n</blockquote>\r\n\r\n<p style="text-align:right">Theo&nbsp;<span style="color:#e74c3c">blog.techtalk.vn</span>&nbsp;</p>\r\n', '0000-00-00 00:00:00', '2017-10-16 12:17:00', 'Change-The-World-Graphic-570x430-570x385.jpg', 1, 0, 0, ''),
(11, 5, 'Áp dụng đúng quy tắc 50/20/30', 'Nếu bạn đang tìm kiếm một phương pháp để bắt đầu quản lí ngân sách một cách dễ dàng, phương pháp 50/20/30 sẽ cung cấp cho bạn một nền tảng vững chắc giúp bạn xác định ưu tiên và phân bổ nguồn lực một cách hợp lý.', '<p>Việc ph&acirc;n bổ ng&acirc;n s&aacute;ch sẽ gi&uacute;p bạn l&ecirc;n kế hoạch trước xem m&igrave;nh cần chi ti&ecirc;u những g&igrave;. V&iacute; dụ khi đi du lịch, bạn n&ecirc;n t&iacute;nh to&aacute;n trước xem m&igrave;nh n&ecirc;n ti&ecirc;u g&igrave;, mua g&igrave;, để tr&aacute;nh việc vung tay qu&aacute; trớn.</p>\r\n\r\n<p style="margin-left:120px"><img alt="" src="http://localhost/projectphp/core/public/static/uploads/images/tin/photo-0-1500890875837-150x150.jpg" style="height:150px; width:150px" /></p>\r\n\r\n<h3>Quy tắc n&agrave;y hoạt động thế n&agrave;o?</h3>\r\n\r\n<p>Quy tắc ng&acirc;n s&aacute;ch 50/20/30 sẽ chia nhỏ thu nhập h&agrave;ng th&aacute;ng của bạn v&agrave;o 3 danh mục sau:</p>\r\n\r\n<ul>\r\n	<li>50% cho chi ph&iacute; cố định</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Đ&acirc;y l&agrave; KHOẢN TIỀN kh&ocirc;ng thể kh&ocirc;ng chi của bạn như tiền nh&agrave;, tiền học của con, tiền điện nước, h&oacute;a đơn điện thoại v&agrave; c&aacute;c h&oacute;a đơn&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; th&ocirc;ng thường kh&aacute;c. Đối với c&aacute;c khoản ph&iacute; kh&ocirc;ng cố định, v&iacute; dụ như một số th&aacute;ng bạn phải trả tiền điện nhiều hơn, h&atilde;y lấy một con số&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; gần với số tiền bạn thường chi trả. H&atilde;y t&iacute;nh cao hơn một ch&uacute;t cũng được v&igrave; d&ugrave; sao thừa c&ograve;n hơn thiếu.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hy vọng rằng tổng c&aacute;c loại chi ph&iacute; n&agrave;y chỉ bằng 50% lương của bạn. Nếu con số cao hơn th&igrave; cũng đừng nản l&ograve;ng. V&iacute; dụ, nếu chi ph&iacute; cố&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; định của bạn l&ecirc;n tới 60%, bạn sẽ c&oacute; 2 lựa chọn:</p>\r\n\r\n<ol>\r\n	<li>T&igrave;m c&aacute;ch để giảm tiền c&aacute;c h&oacute;a đơn xuống</li>\r\n	<li>Giảm 5% ở mỗi danh mục tiếp theo, những khoản linh hoạt hơn v&agrave; tạo ra sự kh&aacute;c biệt hơn (c&aacute;c chuy&ecirc;n gia khuy&ecirc;n bạn cắt giảm ở phần chi ti&ecirc;u linh hoạt, chứ kh&ocirc;ng n&ecirc;n giảm ở mục ti&ecirc;u t&agrave;i ch&iacute;nh).</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>20% cho mục ti&ecirc;u t&agrave;i ch&iacute;nh</li>\r\n</ul>\r\n\r\n<p style="margin-left:40px">Ch&uacute;ng bao gồm tiền tiết kiệm v&agrave; đầu tư như l&agrave; kế hoạch cho nghỉ hưu v&agrave; t&agrave;i khoản đầu tư, tiết kiệm. Bạn cũng c&oacute; thể th&ecirc;m cả những khoản nợ cần chi trả ở mục n&agrave;y.</p>\r\n\r\n<p style="margin-left:40px">Những khoản nợ phải trả vốn đ&atilde; nằm trong mục chi ph&iacute; cố định, nhưng nếu bạn c&oacute; mục ti&ecirc;u trả nhanh những khoản nợ, h&atilde;y cho th&ecirc;m ch&uacute;ng v&agrave;o mục n&agrave;y.</p>\r\n\r\n<ul>\r\n	<li>30% cho chi ti&ecirc;u linh hoạt</li>\r\n</ul>\r\n\r\n<p style="margin-left:40px">H&atilde;y suy nghĩ về mục cuối c&ugrave;ng như quỹ chi ti&ecirc;u c&aacute; nh&acirc;n của bạn. Tất cả mọi thứ từ thực phẩm, giải tr&iacute; hay kỳ nghỉ, mua sắm đều ở đ&acirc;y.</p>\r\n\r\n<p style="margin-left:40px">Khi đ&atilde; c&oacute; những khoản cho chi ti&ecirc;u cố định v&agrave; ưu ti&ecirc;n t&agrave;i ch&iacute;nh, bạn sẽ thoải m&aacute;i sử dụng quỹ tiền n&agrave;y theo bất kỳ c&aacute;ch n&agrave;o bạn muốn. Ph&acirc;n bổ số tiền hợp l&yacute; sẽ gi&uacute;p bạn tr&aacute;nh khỏi nợ nần nếu chi qu&aacute; nhiều cho qu&agrave; c&aacute;p v&agrave; du lịch.</p>\r\n\r\n<p style="margin-left:40px">Cũng cần lưu &yacute; rằng d&ugrave; bạn c&oacute; d&agrave;nh 50% cho chi ph&iacute; cố định hay kh&ocirc;ng th&igrave; h&atilde;y ch&uacute; &yacute;, coi chừng v&agrave; cắt giảm những khoản chi ti&ecirc;u l&atilde;ng ph&iacute;. Những điều n&agrave;y sẽ gi&uacute;p bạn giữ ưu ti&ecirc;n t&agrave;i ch&iacute;nh của bạn ho&agrave;n hảo đ&uacute;ng nghĩa.</p>\r\n\r\n<p>Quy tắc 50/20/30 l&agrave; điểm khởi đầu tuyệt vời cho ch&uacute;ng ta khi cần một cấu tr&uacute;c dễ nhớ để ph&acirc;n bổ chi ti&ecirc;u một c&aacute;ch hợp l&yacute;. Quy tắc n&agrave;y mang đến c&aacute;ch thức ph&ugrave; hợp linh hoạt với t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh &ldquo;độc nhất v&ocirc; nhị&rdquo; của bạn.</p>\r\n\r\n<p style="text-align:right">Theo <span style="color:#e74c3c">ins.dkn.tv</span></p>\r\n', '2017-10-13 09:54:58', '2017-10-13 11:21:48', 'photo-0-1500890875837-150x150.jpg', 1, 0, 0, 'ap-dung-dung-quy-tac-502030');

-- --------------------------------------------------------

--
-- Structure de la table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cat` varchar(255) NOT NULL,
  `content_cat` varchar(255) NOT NULL,
  `editor_id` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `active` tinyint(4) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `news_category`
--

INSERT INTO `news_category` (`id`, `name_cat`, `content_cat`, `editor_id`, `date_create`, `date_update`, `active`, `parent_id`) VALUES
(1, 'Công nghệ', 'Công nghệ và đời sống', 1, '2017-10-03 15:57:10', '2017-10-10 15:57:13', 1, 4),
(2, 'Kỹ Thuật', 'Kỹ thuật đối với đời sống', 1, '2017-10-04 15:57:19', '2017-10-05 15:57:26', 1, 4),
(3, 'Khoa Học', 'Khoa học và đời sống con người', 1, '2017-10-10 09:43:51', '2017-10-11 09:43:55', 1, 4),
(4, 'Công Nghệ Thông Tin', 'Công nghệ thông tin', 1, '2017-10-12 14:00:40', '2017-10-12 14:00:43', 1, 0),
(5, 'Đời sống ', 'Đời sống và cuộc sống', 0, '0000-00-00 00:00:00', '2017-10-13 09:43:55', 0, 0),
(6, 'Kinh tế', 'Kinh tế kế hoạch', 0, '2017-10-13 09:44:39', '2017-10-13 09:58:08', 0, 0),
(7, 'Thị trường trong nước', 'Thị trường trong nước', 0, '2017-10-13 10:17:23', '2017-10-13 10:24:30', 0, 6),
(8, 'Thị trường quốc tế', 'Thị trường quốc tế', 0, '2017-10-13 10:23:56', '2017-10-13 10:32:50', 1, 6),
(9, 'Quân sự', 'Quân Sự', 0, '2017-10-13 10:33:40', '0000-00-00 00:00:00', 1, 0),
(10, 'Khoa học vui', 'Khoa học vui', 0, '2017-10-13 11:28:15', '0000-00-00 00:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `img_avatar` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `id_cat` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `name`, `content`, `detail`, `img_avatar`, `date_create`, `date_update`, `id_cat`, `price`, `active`, `code`) VALUES
(1, 'Rau khoai', 'rau sạch cho bạn', 'rau sạch cho bạn', '0451.png', '2017-10-16 11:08:23', '2017-10-16 09:46:05', 1, '15000', 0, ''),
(2, 'Cà rốt', 'Củ cà rốt', '<p>Củ c&agrave; rốt</p>\r\n', 'bodyWrapper_2.png', '2017-10-16 09:40:14', '2017-10-16 11:23:19', 3, '10000', 1, 'ca-rot'),
(3, 'Khoai Lang', 'Khoai Lang', '<p>Khoai Lang</p>\r\n', '041.png', '2017-10-16 11:24:08', '2017-10-16 11:57:32', 2, '14000', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cat` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `content_cat` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `editor_id` int(11) NOT NULL,
  `cretor_id` int(11) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `product_category`
--

INSERT INTO `product_category` (`id`, `name_cat`, `date_create`, `date_update`, `content_cat`, `parent_id`, `editor_id`, `cretor_id`, `active`) VALUES
(1, 'Rau', '2017-10-16 11:29:35', '2017-10-16 10:50:41', 'danh mục rau', 0, 0, 0, 1),
(2, 'Quả', '2017-10-14 13:43:37', '2017-10-16 13:43:43', 'Quả', 0, 0, 0, NULL),
(3, 'Củ', '2017-10-02 13:43:59', '2017-10-03 13:44:03', 'Củ', 0, 0, 0, NULL),
(4, 'Rau Sống', '2017-10-02 13:44:42', '2017-10-04 13:44:48', 'Rau Sống', 1, 0, 0, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
