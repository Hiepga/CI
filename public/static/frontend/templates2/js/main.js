	jQuery(document).ready(function() {
        
		$("#owl-events").owlCarousel({
			loop:false,
			margin:0,
			autoPlay: 4000,
			autoplayTimeout:1000,
			pagination: true,
			navigation : false,
			items: 1,
			singleItem:true,
			dotsEach  : false,
		});

		$("#partner").owlCarousel({
			loop:false,
			margin:0,
			autoPlay: 4000,
			autoplayTimeout:1000,
			pagination: false,
			navigation : true,
			items: 4,
			dotsEach  : false,
		});

		$(".content_slide").owlCarousel({
			loop:false,
			margin:0,
			pagination: false,
			navigation : true,
			items: 3,
			dotsEach  : false,
		});

         jQuery('.slogan').textillate({ initialDelay: 2000, loop: true,  in: {effect: 'flipInY'}, out: {effect: 'flipInY'},});
	});