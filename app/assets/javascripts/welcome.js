# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
	$('#welcome-sign-in-button').on('click', function() {
		$('#welcome-home-box').toggleClass('hidden');
		$('#welcom-sign-in-box').toggleClass('hidden')
	})
})
