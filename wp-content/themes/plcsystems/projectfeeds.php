<ul class="sliding-news">
	<!-- start -->
	<?php
		$query = new WP_Query(array('post_type' => 'project', '&meta_query' => array( array( 'key' => '_is_featured_news','&value' => '1' ))));
			while ($query->have_posts()) : $query->the_post();
				// if (has_post_thumbnail()) {
					// $thumbnail_id = get_post_thumbnail_id(get_the_ID());
					// $thumbnail = wp_get_attachment_image_src($thumbnail_id, 'full');
					// $thumbnail_url = $thumbnail[0];
				// }
	?>
		<li class="projects-feed-list">
			<table class="table">
				<tr>
					<td class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<a href="<?php the_permalink() ?>" title="<?php the_title(); ?>"><?php the_post_thumbnail(); ?></a>
					</td>
					<td class="col-lg-8 col-md-8 col-sm-3 col-xs-12">
						<p><a href="<?php the_permalink() ?>" class="feed-title"><?php the_title(); ?></a></p>
						<div class="project-content">
							<p><?php echo news_limit_characters(get_the_content(), 100) . '...'; ?></p>
						</div>
					</td>
				</tr>
			</table>
		</li>
		<?php $i++;
	endwhile; ?>
	<!-- end loop -->
</ul>