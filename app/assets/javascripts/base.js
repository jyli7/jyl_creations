$(function () {
	initMenuLinkListener();
	initMenuItemListener();
	identifySection();
});

var initMenuLinkListener = function () {
	$('.menu-item a').on('click', function () {
		$('.menu-item').removeClass('active');
		$(this).parent('.menu-item').addClass('active');
		$(this).parent('.menu-item').trigger('madeActive');
	});
}

// Do the right thing when menu item is made active
var initMenuItemListener = function () {
	var sections = ['work', 'about', 'writing', 'inquiry']
	$('.menu-item').on('madeActive', function () {
		// For section scrolling
		var sectionName = $(this).children('a').data('name');
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
	if(window.location.pathname) {
    var path = window.location.pathname.substring(1);
    $('.menu-item').removeClass('active');
    $('.menu-item a' + '[data-name=' + path + ']').parent('.menu-item')
    																															 .addClass('active')
    																															 .trigger('madeActive');
  }
}