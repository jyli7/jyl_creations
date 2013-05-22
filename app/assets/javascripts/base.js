$(function () {
	initMenuLinkListener();
	initMenuItemListener();
	identifySection();
});

var initMenuLinkListener = function () {
	$('.menu-item a, .magic-link').on('click', function (e) {
		e.preventDefault();
		$('.menu-item').removeClass('active');
		if ($(this).parent('.menu-item') === true) {
			var $menuItem = $(this).parent('.menu-item');
		} else {
			var $menuItem = $('.menu-item' + '[data-name=' + $(this).data('name') +']');
		}
		$menuItem.addClass('active');
		$menuItem.trigger('madeActive');
	});
}

// Do the right thing when menu item is made active
var initMenuItemListener = function () {
	var sections = ['work', 'about', 'writing', 'inquiry']
	$('.menu-item').on('madeActive', function () {
		// For section scrolling
		var sectionName = $(this).children('a').data('name');
		window.location.hash = sectionName;
		
		$('.section-item').removeClass('stage-left active stage-right');
		sections.forEach(function (section){
			if (sections.indexOf(section) < sections.indexOf(sectionName)){
				$('.' + section).addClass('stage-left')
			}
			else if (section == sectionName) {
				$('.' + section).addClass('active')
			}
			else {
				$('.' + section).addClass('stage-right')
			}
		});
	});
}

var identifySection = function () {
	if(window.location.hash) {
    var hashName = window.location.hash.slice(1);
    $('.menu-item').removeClass('active');
    $('.menu-item a' + '[data-name=' + hashName + ']').parent('.menu-item').addClass('active').trigger('madeActive');
  }
}