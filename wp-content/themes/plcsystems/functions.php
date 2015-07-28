<?php
	//This site's functions are compatible with Wordpress 3.3
	
	//enqueue our custom scripts on the front end only
	add_action('get_header', 'add_myscripts');
	function add_myscripts(){
		//enqueues our script and ensures that jquery is also loaded
		wp_enqueue_script('custom.js', get_bloginfo('template_directory') . "/js/custom.js", array('jquery'));
		//send a variable to this script so that we can get the path to our ajax function
		$data = array(
			"ajaxpath" => admin_url("admin-ajax.php"),
			"themepath" => get_bloginfo("template_directory"),
		);
		wp_localize_script("custom.js", "wpvars", $data);
		
		/* //uncomment if threaded comment javascript is needed
		if (is_singular() && get_option("thread_comments")) {
			wp_enqueue_script("comment-reply");
		}
		*/
	}
	
	// add theme options start
	
	function themeoptions_admin_menu()
	{
		// here's where we add our theme options page link to the dashboard sidebar
		add_theme_page("Theme Options", "Theme Options", 'edit_themes', basename(__FILE__), 'themeoptions_page');
	}
	 
	function themeoptions_page()
	{
		// here is the main function that will generate our options page
	}
	 
	add_action('admin_menu', 'themeoptions_admin_menu');
	// add theme options end
	
	//add menus
	register_nav_menus(array(
		"main-nav" => __("Main Menu"),
		"footer" => __("Footer"),
	));
	
	//change excerpt length
	add_filter( "excerpt_length", "new_excerpt_length" );
	function new_excerpt_length( $length ) {
		return 40;
	}
	
	//modify the ending of excerpts
	add_filter("excerpt_more", "new_excerpt_more");
	function new_excerpt_more($more) {
		global $post;
		return ' &hellip;';
	}
	
	//add form access to editor
	function add_grav_forms(){
		$role = get_role('editor');
		$role->add_cap('gform_full_access');
	}
	add_action('admin_init','add_grav_forms');

		
/*	//create custom post types
	add_action("init", "add_custom_post_types");
	function add_custom_post_types() {
		//the practice area type
		$labels = array(
			"name" => _x("News", "post type general name"),
			"singular_name" => _x("News Area", "post type singular name"),
			"add_new" => _x("Add New", "practice area"),
			"add_new_item" => __("Add Latest News"),
			"edit_item" => __("Edit News Item"),
			"new_item" => __("New News Item"),
			"all_items" => __("All News Items"),
			"view_item" => __("View News Item"),
			"search_items" => __("Search News Items"),
			"not_found" =>  __("No news item found"),
			"not_found_in_trash" => __("No news item found in Trash"), 
			"parent_item_colon" => "",
			"menu_name" => "News"
		);
		$args = array(
			"labels" => $labels,
			"description" => "",
			"public" => true,
			"rewrite" => array("slug"=>"news-area"),
			"has_archive" => true, 
			"menu_position" => 5,
			"supports" => array("title","editor","revisions")
		); 
		register_post_type("news",$args);
		register_taxonomy("news-categories","news", array(
			"hierarchical" => true,
			"label" => __("News Type"),
			"query_var" => true,
			"rewrite" => array("slug" => "news-type"),
		));
	}*/
		



		//rename posts to products
		add_action( 'init', 'change_post_object_label' );
		add_action( 'admin_menu', 'change_post_menu_label' );
		function change_post_menu_label() {
			global $menu;
			global $submenu;
			$menu[5][0] = 'News';
			$submenu['edit.php'][5][0] = 'All News';
			$submenu['edit.php'][10][0] = 'Add a News';
			$submenu['edit.php'][15][0] = 'Categories'; // Change name for categories
			unset($submenu['edit.php'][16][0]); // Change name for tags
		}
		function change_post_object_label() {
			global $wp_post_types;
			$labels = &$wp_post_types['post']->labels;
			$labels->name = 'News';
			$labels->singular_name = 'News';
			$labels->add_new = 'Add News';
			$labels->add_new_item = 'Add News';
			$labels->edit_item = 'Edit News';
			$labels->new_item = 'News';
			$labels->view_item = 'View News';
			$labels->search_items = 'Search News';
			$labels->not_found = 'No News found';
			$labels->not_found_in_trash = 'No News found in Trash';
		}
		
/*============Adds Excerpt to Pages==========*/
add_theme_support( 'post-thumbnails' ); 
add_image_size( 'industryicon', 64, 64, true );

add_action( 'init', 'my_add_excerpts_to_pages' );
function my_add_excerpts_to_pages() {
     add_post_type_support( 'page', 'excerpt' );
}


/*========Sitemap Page=======*/
 add_shortcode('sitemap', 'wp_sitemap_page');

 function wp_sitemap_page(){

    echo '<ul>'. wp_list_pages('title_li=&echo=0') .'</ul>';

}


/**
 * Shortcodes for Megamenu widgets.
 */
	function industry_short() {
	$output = '';
	
	$query = new WP_Query('category_name=industries&posts_per_page=15&orderby=date&order=ASC');
	while ( $query->have_posts() ) {
	$query->the_post();
	$output .= '<li><a href="' . esc_url( get_permalink()) . '">' . get_the_title() . '</a></li>';
	}
	wp_reset_query();
	echo '<ul class="submenu">';
	return $output;
	echo '</ul>';
	}
	add_shortcode( 'industryposts', 'industry_short' );

/*==================Roles Posts====================*/
	function roles_short() {
	$output = '';
	
	$query = new WP_Query('category_name=roles&posts_per_page=15&orderby=date&order=ASC');
	while ( $query->have_posts() ) {
	$query->the_post();
	$output .= '<li><a href="' . esc_url( get_permalink()) . '">' . get_the_title() . '</a></li>';
	}
	wp_reset_query();
	echo '<ul class="submenu">';
	return $output;
	echo '</ul>';
	}
	add_shortcode( 'rolesposts', 'roles_short' );

/*==================Roles Posts====================*/
	function products_short() {
	$output = '';
	
	$query = new WP_Query('category_name=products&posts_per_page=20&orderby=date&order=ASC');
	while ( $query->have_posts() ) {
	$query->the_post();
	$output .= '<li><a href="' . esc_url( get_permalink()) . '">' . get_the_title() . '</a></li>';
	}
	wp_reset_query();
	echo '<ul class="submenu product">';
	return $output;
	echo '</ul>';
	}
	add_shortcode( 'productsposts', 'products_short' );




/**
 * Register our sidebars and widgetized areas.
 */
	add_action( 'widgets_init', 'my_register_sidebars' );

	function my_register_sidebars() {

		/* Register the 'primary' sidebar. */
		register_sidebar(
			array(
				'id' => 'sidebar-1',
				'name' => __( 'Sidebar 1' ),
				'description' => __( 'Sidebar for internal pages' ),
				'before_widget' => '<div id="%1$s" class="widget %2$s">',
				'after_widget' => '</div>',
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>'
			)
		);

	}


	function my_login_logo() { ?>
    <style type="text/css">
        .login h1 a {
            background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png);
            padding-bottom: 0px;
            height: 77px;
            background-size: 140px;
            width: 140px;
        }
    </style>
	<?php }
	add_action( 'login_enqueue_scripts', 'my_login_logo' );


	add_action("init", "remheadlink");
	function remheadlink() {
		remove_action("wp_head", "rsd_link"); //remove RSD link
		remove_action("wp_head", "wp_generator"); //removes generated by wordpress tag (aka "please hack me")
		remove_action("wp_head", "feed_links_extra", 3 ); // Removes the links to the extra feeds such as category feeds
		remove_action("wp_head", "feed_links", 2 ); // Removes links to the general feeds: Post and Comment Feed
		remove_action("wp_head", "rsd_link"); // Removes the link to the Really Simple Discovery service endpoint, EditURI
		remove_action("wp_head", "wlwmanifest_link"); // Removes the link to the Windows Live Writer manifest file.
	}
	
?>
