<?php

get_header(); ?>

<div id="main-content">
	<div class="main-banner">
		<?php echo do_shortcode('[layerslider id="1"]'); ?>
	</div><!--End of main banner-->
	<div class="container content-area">
		<div class="row">
			<div class="col-md-12 main-content-inner">
				<?php if ( function_exists('yoast_breadcrumb') ) {
				yoast_breadcrumb('<p id="breadcrumbs">','</p>');
				} ?>
				<?php if (have_posts()) { ?>
					<?php while (have_posts()) { the_post(); ?>
						<article class="post target-content">
							<h1><?php the_title(); ?></h1>
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
									<?php the_content(); ?>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<?php the_post_thumbnail(); ?>
								</div>
							</div>
						</article>
					<?php } ?>
				<?php } else { ?>
					<article class="page">
						<h1>Nothing Found</h1>
						<p>Sorry, but you are looking for something that isn't here.</p>
						<p><a href="<?php echo get_option("home"); ?>">Return to the homepage</a></p>
					</article>
				<?php } ?>
			</div>
		</div>
	</div>

</div>

<?php get_footer(); ?>