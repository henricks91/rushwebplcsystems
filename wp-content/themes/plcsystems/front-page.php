<?php
/*
Template Name: Homepage Template
*/

get_header(); ?>
<div id="main-content">
	<div class="main-banner">
		<?php echo do_shortcode('[layerslider id="1"]'); ?>
	</div><!--End of main banner-->

	<div class="about-company-text">
		<div class="container">
			<h2>About Our Company</h2>
			<div class="about-description">
				<p>PLC Systems Technik, inc. the world's largest company dedicated to industrial automation and information, makes its customers more productive and the world more sustainable. Throughout the world, our product brands are recognized for innovation and excellence.</p>
				<a href="" class="about-button"><img src="<?php bloginfo("template_directory"); ?>/images/about-home-button.png"></a>
			</div>
		</div>
	</div><!--End of main tagline-->

	<div class="latest-news">
		<div class="container">
			<div class="row">
				<h2>Latest News</h2>
				<div class="blog col-md-6 col-xs-6">
					<div class="latest-image col-md-5">
						<img src="<?php bloginfo("template_directory"); ?>/images/post-1.jpg">
					</div>
					<div class="description col-md-7">
						<p>If you want to know the last news about us enter here.</p>
						<p class="date">Dec. 15 2014</p>
					</div>
				</div>

				<div class="blog col-md-6 col-xs-6">
					<div class="latest-image col-md-5">
						<img src="<?php bloginfo("template_directory"); ?>/images/post-1.jpg">
					</div>
					<div class="description col-md-7">
						<p>If you want to know the last news about us enter here.</p>
						<p class="date">Dec. 15 2014</p>
					</div>
				</div>

			</div>
		</div>
	</div><!--End of latest news-->

	<div class="home-tagline">
		<div class="container">
			<p>We design, develop, install, program, integrate equipment<br />
with the latest models of Programmable logic controllers.</p>
		</div>
	</div>

	

	</div>
</div><!--End of main content-->
<?php get_footer(); ?>
