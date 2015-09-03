<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php bloginfo("name"); ?></title>
	<meta charset="utf-8" />
	<?php wp_head(); //get wordpress scripts - required function ?>
	
	<!--THIS TELLS DEVICES NOT TO LIE ABOUT THEIR WIDTH-->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	
	<!--FAVICON-->
	<link rel="icon" href="<?php bloginfo("template_directory"); ?>/images/favicon.png" type="image/png" />
	
	<!-- AddToHome icon stuff for iphones and ipads-->
		<!-- removes the browser interface -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
	 	<!-- custom icons -->
		<link rel="apple-touch-icon" href="<?php bloginfo("template_directory"); ?>/images/phoneicon57.png">
		<link rel="apple-touch-icon" sizes="72x72" href="<?php bloginfo("template_directory"); ?>/images/phoneicon72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="<?php bloginfo("template_directory"); ?>/images/phoneicon114.png">
		<!-- scripts and css for the notice -->
	<!-- end AddToHome -->
	
	<!--GOOGLE FONT-->
	<link href='http://fonts.googleapis.com/css?family=Sintony:400,700' rel='stylesheet' type='text/css'>
	<!--CSS SHEETS-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php bloginfo("template_directory"); ?>/css/meanmenu.min.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('stylesheet_url'); ?>" media="screen" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo("template_directory"); ?>/css/responsive.css" media="screen" />

	<!--CUSTOM SCRIPT-->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<?php bloginfo("template_directory"); ?>/js/jquery.meanmenu.min.js" type="text/javascript"></script>
	<script src="<?php bloginfo("template_directory"); ?>/js/vendor/jquery.bpopup.min.js" type="text/javascript"></script>
	<script src="<?php bloginfo("template_directory"); ?>/js/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>
	<script src="<?php bloginfo("template_directory"); ?>/js/jquery.cycle.all.js" type="text/javascript"></script>

	<!-- end google font -->

	<!--Script and other resources-->
	
	<!--End Script and other resources-->
	<!--IE FIXES-->
		 <!--[if lt IE 9]>
	        <script src="<?php echo get_template_directory_uri() ?>/js/vendor/html5-3.6-respond-1.1.0.min.js"></script>
    <![endif]-->	
	
	<script type="text/javascript" defer="defer" src="https://mylivechat.com/chatinline.aspx?hccid=37751473"></script>
	
</head>
<body <?php body_class(); ?>>
<!--[if lt IE 8]>
    <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
<![endif]-->


<header class="container">
		<div class="row">
			<div id="logo" class="col-md-4">
	            <a href="<?php bloginfo("url"); ?>">
	                <img src="<?php bloginfo("template_directory"); ?>/images/logo.gif" alt="<?php bloginfo("name"); ?>" />
	            </a>
	        </div>
	        <nav id="main-nav" class="col-md-8" role="navigation">
	            <?php
	                $options = array( 
	                    'container' => false,
	                    'menu_class' => 'nav', 
	                    'menu_id' => 'menu-primary-navigation',
	                    'theme_location' => 'main-nav', 
	                    'depth' => 3
	                );
	                //generate NAV menu
	                wp_nav_menu($options); 
	            ?>
	      	</nav>
      </div>                  
</header>
        
<div id="content" class="main-content-wrapper">
    <div id="main" class="main-content-inner">


