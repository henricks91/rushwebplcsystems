<?php
/*
Template Name: Default Page Template
*/

get_header(); ?>
<div id="main-content" class="with-sidebar">
	<div class="main-banner">
		<?php echo do_shortcode('[layerslider id="1"]'); ?>
	</div><!--End of main banner-->
	<div class="container content-area">
		<div class="row">
			<?php if ( function_exists('yoast_breadcrumb') ) {
			yoast_breadcrumb('<p id="breadcrumbs">','</p>');
			} ?>
			<?php if (have_posts()) { ?>
				<?php while (have_posts()) { the_post(); ?>
					<article class="post col-md-9">
						<h1><?php the_title(); ?></h1>
						<?php the_content(''); ?>
					</article>
				<?php } ?>
			<?php } else { ?>
				<article class="page col-md-9">
					<h1>Nothing Found</h1>
					<p>Sorry, but you are looking for something that isn't here.</p>
					<p><a href="<?php echo get_option("home"); ?>">Return to the homepage</a></p>
				</article>
			<?php } ?>
			<?php get_sidebar(); ?>
		</div>
	</div>
</div><!--End of main content-->
<?php get_footer(); ?>