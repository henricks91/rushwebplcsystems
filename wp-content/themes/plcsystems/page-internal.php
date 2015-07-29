<?php
/*
Template Name: Main Menu Page Template
*/

get_header(); ?>
<div id="main-content">
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
				<a href="sample-content-1" class="post-link">click here!</a>
				<a href="sample-content-2" class="post-link">click here 2!</a>
			</div>
			<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12" id="ajax-content">
				<?php if (have_posts()) { ?>
					<div class="col-xs-12">
						<ul>
						<!-- start -->
							 <?php
								$query = new WP_Query(array('post_type' => 'project', '&meta_query' => array( array( 'key' => '_is_featured_news','&value' => '1' ))));
									while ($query->have_posts()) : $query->the_post();
								 ?>
								<li class="projects-feed-list">
									<p><a href="<?php the_permalink() ?>"/><?php the_title(); ?></a></p>
									<div class="project-content">
										<p><?php echo news_limit_characters(get_the_content(), 20) . '...'; ?></p>
									</div>
								</li>
									<?php $i++;
								endwhile; ?>
							<!-- end loop -->
							</ul>
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