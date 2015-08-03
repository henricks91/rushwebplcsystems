jQuery(document).ready(function($) {
	
	$('.post-link').click(function(e){
		var post_link = $(this).attr("href");
		e.preventDefault();
		
		$('.hidden-container').bPopup({
            contentContainer:'.hidden-container',
            loadUrl: post_link + " .target-content"
        });
		
	});

});