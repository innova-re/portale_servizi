/*global window*/
(function (window, $) {
	'use strict';

	$(function () {

		// TODO you shoould find a way to make an ajax request by symfony2
		var url = window.location.pathname.slice(0, -1);
		var urlRoot = url.substring(url.lastIndexOf('/'));

		$('.sidebar-nav li').each(function (index, li) {
			var $li = $(li);

			$li.removeClass('active');
			if(urlRoot.indexOf(($li.find('a').text()).toLowerCase()) !== -1) {
				console.log($li.find('a').text())
				$li.addClass('active');
			}
		});
	});
}(window, window.jQuery));
