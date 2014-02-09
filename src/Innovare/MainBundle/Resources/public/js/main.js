/*global window*/
(function (window, $) {
	'use strict';

	$(function () {

		// TODO you shoould find a way to make an ajax request by symfony2
		var url = window.location.pathname.slice(0, -1);

		$('.sidebar-nav li').each(function (index, li) {
			var $li = $(li);

			$li.removeClass('active');
			if(url.indexOf($li.find('a').text().toLowerCase()) !== -1) {
				$li.addClass('active');
			}
		});
	});
}(window, window.jQuery));
