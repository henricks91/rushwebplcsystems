<?php

get_header(); ?>
<div id="main-content">
	<div class="inner">
		<div class="grid-66 main-content-inner">
			<?php if ( function_exists('yoast_breadcrumb') ) {
			yoast_breadcrumb('<p id="breadcrumbs">','</p>');
			} ?>
			<?php if (have_posts()) { ?>
				<?php while (have_posts()) { the_post(); ?>
					<article class="post">
						<h1><?php the_title(); ?></h1>
						<?php the_content(''); ?>
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
			<?php get_sidebar(); ?>
	</div>
</div>

<?php get_footer(); ?>