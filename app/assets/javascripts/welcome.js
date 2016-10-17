// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
function setHiddenToggles(clickedButton, firstBox, secondBox){
	$('#' + clickedButton).on('click', function(event) {
		event.preventDefault();
		$('#' + firstBox).toggleClass('hidden');
		$('#' + secondBox).toggleClass('hidden');
	}
}

$(document).on('turbolinks:load', function() {
	setHiddenToggles('welcome-sign-in-button', 'welcome-home-box', "welcome-sign-in-box");
})