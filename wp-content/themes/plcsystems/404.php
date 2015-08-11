<?php

get_header(); ?>
<div id="main-content">
	<div class="container content-area">
		<div class="row">
			<?php if ( function_exists('yoast_breadcrumb') ) {
			yoast_breadcrumb('<p id="breadcrumbs">','</p>');
			} ?>
				<article class="post col-md-12 not-found-page">
					<h2>Page Not Found</h2>
					<h3>The page you were looking for appears to have been moved, deleted or does not exist.</h3>
					<p>This is most likely due to:</p>
					<ul>
						<li>An outdated link on another site</li>
						<li>A typo in the address / URL</li>
					</ul>
					<p><a href="<?php echo get_option("home"); ?>">Return to the homepage</a></p>
				</article>
		</div>
	</div>
</div>

<?php get_footer(); ?>