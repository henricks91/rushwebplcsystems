jQuery(document).ready(function($) {

$.ajaxSetup({cache:false});
	$(".post-link").click(function(){
		var post_link = $(this).attr("href");

		$("#ajax-content").html("<p>" + "Loading Content..." + "</p>");
		$("#ajax-content").load(post_link + " .target-content");
	return false;
});

});

// $(this).load(contentlink + " .productPage .unique-desc p", function () {
            // $($this).prepend(thecontent);
        // });