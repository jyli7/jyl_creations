$(function () {
	$('.work-wrapper').isotope({
		itemSelector: '.work-item-container',
		layoutMoude: 'fitRows'
	});

	$('.work-filters a').on('click', function (e) {
		e.preventDefault();
		$(this).parent().siblings('li').removeClass('active');
		$(this).parent().addClass('active');
		var selector = $(this).data('filter');
		if (selector === '*') {
			$('.work-wrapper').isotope();
		} else {
			$('.work-wrapper').isotope({ filter: '.' + selector });
		}
		
	});
});