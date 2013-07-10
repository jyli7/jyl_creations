$(function () {
	$('.work-wrapper').isotope({
		itemSelector: '.work-item-container',
		layoutMoude: 'fitRows'
	});

	$('.work-filters a').on('click', function (e) {
		e.preventDefault();
		var selector = $(this).data('filter');
		$('.work-wrapper').isotope({ filter: '.' + selector });
	});
});