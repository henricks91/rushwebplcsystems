jQuery(document).ready(function($) {
	
	$('.post-link').click(function(e){
		e.preventDefault();
		var post_link = $(this).attr("data-href");
		
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
	
	//$('#mini1, #mini2, #mini3, #mini4, #mini5').cycle();

	$('#mini1').cycle({
		delay: -2000
	});

	$('#mini2').cycle({
		delay: -3000
	});

	$('#mini3').cycle({
		delay: -4000
	});

	$('#mini4').cycle({
		delay: -2000
	});

	$('#mini5').cycle({
		delay: -3000
	});

	$('#mini6').cycle({
		delay: -2000
	});

	$('#mini7').cycle({
		delay: -3000
	});

	$('#mini8').cycle({
		delay: -4000
	});

	$('#mini9').cycle({
		delay: -2000
	});

	$('#mini10').cycle({
		delay: -3000
	});

});

(function($){
   $(document).ajaxComplete(function() {
     if($('.target-content .row .product-image-area').find('img').length == 0 ){
		$('.target-content .row .product-descriptions-area').css('width','100%');
	}
   });
})(jQuery);
