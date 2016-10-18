// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {
	console.log('loaded welcome.js')
	$('#welcome-sign-in-button').on('click', function() {
		$('#welcome-home-box').addClass('hidden');
		$('#welcome-sign-in-box').toggleClass('hidden')
		$('#welcome-sign-in-box').addClass('animated fadeIn');
	})
})

