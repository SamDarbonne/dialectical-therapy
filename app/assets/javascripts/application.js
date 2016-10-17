// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize-sprockets 
//= require ahoy
//= require jquery_ujs
//= require turbolinks
//= require_tree .


console.log('application.js loaded! Huzzah!')


// get the party started
jQuery(document).ready(function() {
	//prevent default behavior for all disabled anchor tags
	jQuery('.disabled').on('click', function(event) {
		event.preventDefault()
	})

	// set radio buttons for how user was feeling before and after event
	radioButtons('before-feeling', 'before-input', 2, 11);
	radioButtons('after-feeling', 'after-input', 17, 26);
	
	//list all of our toggle buttons
	setHiddenToggles('welcome-sign-in-button', 'welcome-home-box', 'welcome-sign-in-box');
	setHiddenToggles('form-one-next', 'form-one', 'form-two');
	setHiddenToggles('form-two-next', 'form-two', 'form-three');
	setHiddenToggles('form-three-next', 'form-three', 'form-four');
	setHiddenToggles('form-two-back', 'form-two', 'form-one');
	setHiddenToggles('form-three-back', 'form-three', 'form-two');
	setHiddenToggles('form-four-back', 'form-four', 'form-three');
})



// set the click listener for hiding current form-box and showing the next or previous, for user with
// next and back buttons
function setHiddenToggles(clickedButton, firstBox, secondBox){
	$('#' + clickedButton).on('click', function(event) {
		event.preventDefault();
		$('#' + firstBox).toggleClass('hidden');
		$('#' + secondBox).toggleClass('hidden');
	})
}

// set CSS class of clicked button to highlighted, remove highlighted class from all other buttons,
//   and sets hidden input field as value of button clicked
function radioButtons(feeling, input, start, end) {
	jQuery('.' + feeling).on('click', function() {
		text = $(this).text();
		$($(this).children()[0]).addClass('number-box-reversed')
		$($(this).children()[0]).removeClass('number-box')
		for(var i = start; i < end; i++){
			$($($(this).siblings()[i]).children()[0]).removeClass('number-box-reversed')
			$($($(this).siblings()[i]).children()[0]).addClass('number-box')
		}
		$($('.' + input)[0]).attr('value', Number(text))
		// sanity check that hidden input field is actually changing
		console.log($($('.' + input)[0]).attr('value'))
	})
}
