jQuery(document).ready(function($) {
	
	$('.post-link').click(function(e){
		var post_link = $(this).attr("href");
		e.preventDefault();
		
		$('.hidden-container').bPopup({
            contentContainer:'.hidden-container',
            loadUrl: post_link + " .target-content"
        });
		
	});
	
	$(".sliding-news").bootstrapNews({
		newsPerPage: 6,
		autoplay: true,
		pauseOnHover: true,
		navigation: false,
		direction: 'down',
		newsTickerInterval: 5000,
		onToDo: function () {
			//console.log(this);
		}
    });

});