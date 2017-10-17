<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta property="og:title" content="CV - Trần Chánh Hiệp" />	
	<meta property="og:site_name" content="CV - Trần Chánh Hiệp" />	
	<meta property="og:description" content="CV - Trần Chánh Hiệp" />
	<link rel="image_src" href="demo/banner-share.jpg" />
	<meta property="og:image" href="demo/banner-share.jpg" />

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>{$title}</title>
	<link rel="shortcut icon" type="text/css" href="favicon.ico" />

	{include file='linkcss.tpl'}
</head>
<body>
	<div class="wrapper">
		<!-- Header -->
			<div id="header">
				<div id="menu_closed" title="" data-toggle="tooltip" data-original-title="Close Menu">
				    <i class="fa fa-times"></i>
				</div>

				<div class="logo">
					<a href="">
						<img src="{base_url('public/static/uploads/cv1/')}{$content_cv->avatar}">
					</a>
				</div>

				<h4 class="slogan">
					{$content_cv->name}
				</h4>

				<!-- Menu Left -->
				<nav class="navigation">
					<ul class="menu-header">
						<li class="active">
							<a ref="#home">
								<i class="fa fa-home icon_menus"></i>
								<span>Home</span>
							</a>
						</li>
						<li>
							<a ref="#profile">
								<i class="fa fa-user"></i>
								<span>Profile</span>
							</a>
						</li>
						<li>
							<a ref="#resume">
								<i class="fa fa-tasks"></i>
								<span>Resume</span>
							</a>
						</li>
						<li>
							<a ref="#portfolio">
								<i class="fa fa-suitcase"></i>
								<span>Portfolio</span>
							</a>
						</li>
						<li>
							<a ref="#blog">
								<i class="fa fa-bullhorn"></i>
								<span>Blog</span>
							</a>
						</li>
						<li>
							<a ref="#contact">
								<i class="fa fa-paper-plane"></i>
								<span>Contact</span>
							</a>
						</li>
					</ul>
				</nav>
				<!-- End -->
				
				<!-- Social icon -->
				<ul class="social-icon">
					<li><a class="social-twitter" target="_blank" href="https://twitter.com/chanh_hiep"><i class="fa fa-twitter"></i></a></li>
					<li><a class="social-facebook" target="_blank" href="https://www.facebook.com/hiepga0201"><i class="fa fa-facebook"></i></a></li>
					<li><a class="social-google" target="_blank" href="https://plus.google.com/u/0/104666995977858364723"><i class="fa fa-google-plus"></i></a></li>
				</ul>
				<!-- End -->
				
				<div class="copy_right">
					<p>
						&copy 2015. By <a href="">Flexycodes</a>
					</p>
					<p>
						Developed by <a href="http://hiepdev.info/" style="color: #cea525;">Chanh Hiep</a>
					</p>
				</div>
			</div>

			<div class="header-mobile">
				<div class="main-header">		
					<div class="logo_wrapper">
						<span class="site_title">
							<a href="" title="Throne">
								<img src="{base_url('public/static/templates/cvonline')}/images/logo-top.png?v=1" alt="FlexyBlog">
							</a>
						</span>
					</div>
					<a class="nav-btn menu_close" id="btn_open_menu" href="#"><i class="fa fa-bars"></i></a>
				</div>
			</div>
		<!-- End Header -->

		<!-- Main -->
			<div id="main">
				{block name="content"}{/block}
			</div>
		<!-- End Main -->
	</div>

	{include file='linkjs.tpl'}
</body>
</html>