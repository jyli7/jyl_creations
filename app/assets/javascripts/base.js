$(function () {
	initWorkHash();
	initInitialLoad();
	initMenuLinkListener();
	initMenuItemListener();
	initWritingListener();
	identifySection();
});

// Set '#work' at root, by default
var initWorkHash = function () {
	if (window.location.pathname == "/" && !window.location.hash) {
		window.location.hash = 'work';
	}
}

var initInitialLoad = function () {
	if (window.location.hash === '#work') {
		$('.work-item-description').addClass('hidden');
		setTimeout(function () {
			$('.work-item-description').removeClass('hidden');
		}, 300);
	}
}

// When user clicks on link, make the menu item active
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

		if (atPostsPath()){
			$menuItem.trigger('madeActive', true);
		} else {
			$menuItem.trigger('madeActive');
		}
		
	});
}

// Do the right thing when menu item is made active
var initMenuItemListener = function () {
	var sections = ['work', 'about', 'writing', 'inquiry']
	$('.menu-item').on('madeActive', function (e, noSlide) {
		// For section scrolling
		var sectionName = $(this).children('a').data('name');

		window.location.hash = sectionName;

		// If user is not at root path, bring them to root path
		if (window.location.pathname.slice(1).length) {
			window.location = '/#' + sectionName + '-noslide';
		}

		// Hide the slide stuff if noSlide is true
		if (noSlide) { $('.section-item').addClass('hidden'); }
		
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

		// Show the section items again after sliding is done
		if (noSlide) { setTimeout(function () {
				$('.section-item').removeClass('hidden'); 
			}, 25)
		}

	});
}

// From the hash, infer the section that should be made active
var identifySection = function () {
	if(window.location.hash) {
		var uncleanHash = window.location.hash.slice(1);
    var hashName = cleanHash(uncleanHash);
    $('.menu-item').removeClass('active');
    $relevantMenuItem = $('.menu-item a' + '[data-name=' + hashName + ']').parent('.menu-item')
    $relevantMenuItem.addClass('active');
    if (noSlide(uncleanHash)) {
    	$relevantMenuItem.trigger('madeActive', true)
    } else {
    	$relevantMenuItem.trigger('madeActive');
    }
	}
}

// Ad hoc method for activating the writing menu link at any '/posts' url
var initWritingListener = function () {
	if (atPostsPath()) {
		$('.menu-item').removeClass('active');
		$('.menu-item' + '[data-name=writing]').addClass('active');
	}
}

var atPostsPath = function () {
	return (window.location.pathname.split('/')[1] === 'posts');
}

var noSlide = function (fullHash) {
	return (fullHash.split('-')[1] === 'noslide');
}

// Get rid of 'noSlide' if necessary
var cleanHash = function (uncleanHash) {
	return uncleanHash.split('-')[0]
}