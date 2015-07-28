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
			<h2><?php $_about_company = get_field( 'about_our_company', $post->ID); 	?>
                <?php echo $_about_company ?>
			</h2>
			<div class="about-description">
				<?php $_about_desc = get_field( 'company_description', $post->ID); 	?>
                <?php echo $_about_desc ?>
			</div>
		</div>
	</div><!--End of main tagline-->

	<div class="latest-news">
		<div class="container">
			<div class="row">
				<h2>Latest News</h2>
				<!-- start loop -->
			<?php
				$args =  array('&post_type' => 'post', '&posts_per_page' => 2, '&post_status' => '&publish','&meta_query' => array( array( 'key' => '_is_featured_news','&value' => '1' )));
				$news = new WP_Query($args);
				if ($news->have_posts()) : while ($news->have_posts()) : $news->the_post();
						if (has_post_thumbnail()) {
							$thumbnail_id = get_post_thumbnail_id(get_the_ID());
							$thumbnail = wp_get_attachment_image_src($thumbnail_id, 'full');
							$thumbnail_url = $thumbnail[0];
						}
            ?>
				<div class="blog col-md-6 col-xs-6">
					<div class="latest-image col-md-5">
						<a href="<?php the_permalink() ?>" title="<?php the_title(); ?>"><img src="<?php echo $thumbnail_url; ?>" alt="Text_2" /></a>
					</div>
					<div class="description col-md-7">
						<?php echo news_limit_characters(get_the_content(), 60) . '...'; ?>
						<p class="date"><?php echo get_the_date(get_option('date_format')) ?></p>
					</div>
				</div>
					<?php $i++;
                endwhile;
            endif; ?>
		<!-- end loop -->
			</div>
		<?php
			wp_reset_query(); 
		// end query
		?>	
		</div>
	</div><!--End of latest news-->

	<div class="home-tagline">
		<div class="container">
			<?php $_tagline = get_field( '_plc_tagline', $post->ID); 	?>
            <?php echo $_tagline ?>
		</div>
	</div>
	
	</div>
</div><!--End of main content-->
<?php get_footer(); ?>