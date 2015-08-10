<?php
/*
Template Name: Page With Ajax
*/

get_header(); ?>
	<div class="hidden-container container">
	</div>
<div id="main-content" class="page-ajax">
	<div class="main-banner">
		<?php echo do_shortcode('[layerslider id="1"]'); ?>
	</div><!--End of main banner-->
	<div class="container content-area">
		<div class="row">
			<?php if ( function_exists('yoast_breadcrumb') ) {
			yoast_breadcrumb('<p id="breadcrumbs">','</p>');
			} ?>

			<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
				<h1><?php the_title(); ?></h1>
				<div class="ajax-trigger">
				<?php 

				$posts = get_field('links_ajax');

				if( $posts ): ?>
				    <div class="ajax-trigger-inner">
				    <?php foreach( $posts as $post): // variable must be called $post (IMPORTANT) ?>
				        <?php setup_postdata($post); ?>
				        <div class="ajax-link-wrapper">
				            <a href="javascript:;" data-href="<?php the_permalink(); ?>" class="post-link left"><?php the_title(); ?></a>
				            <a href="javascript:;" data-href="<?php the_permalink(); ?>" class="post-link right"></a>
				        </div>
				    <?php endforeach; ?>
				    </div>
				    <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php endif; ?>
				</div>
			</div>

			<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 projects-feed-area" id="ajax-content">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 feed-header">
					<h2>Projects</h2>
				</div>
				<?php if (have_posts()) { ?>
					<div class="col-xs-12 sliding-area">
						<?php get_template_part( 'projectfeeds' ); ?>
						</div>
						<?php
							wp_reset_query(); // end query 
						?>
					<!-- end -->
					</div>
				<?php } else { ?>
					<article class="page col-md-12">
						<h1>Nothing Found</h1>
						<p>Sorry, but you are looking for something that isn't here.</p>
						<p><a href="<?php echo get_option("home"); ?>">Return to the homepage</a></p>
					</article>
				<?php } ?>
			</div>
		</div>
	</div>
</div><!--End of main content-->
<?php get_footer(); ?>