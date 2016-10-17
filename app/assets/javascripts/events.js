$(document).on('turbolinks:load', function(){
  console.log("Ready!");
	//prevent default behavior for all disabled anchor tags
	jQuery('.disabled').on('click', function(event) {
		event.preventDefault()
	})

	// set radio buttons for how user was feeling before and after event
	radioButtons('before-feeling', 'before-input', 2, 11);
	radioButtons('after-feeling', 'after-input', 17, 26);
	
	//list all of our toggle buttons
	setHiddenToggles('welcome-sign-in-button', 'welcome-home-box', "welcome-sign-in-box");
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

// document ready
//   show form one
//   back button links to profile
//   next button change class to hide form one and show form two

//   on form two
//   back button changes class to show form one and hide form three

//   on form three
//   back button changes class to show form two and hide form four

//   on form four
//   submit button that calls controller#create



// // parsley example

// $(function() {
//   var $sections = $(".new_event_form");

//   function navigateTo(index) {
//     $sections
//     .removeClass('current')
//     .eq(index)
//       .addClass('current');

//   $('.back_next_buttons .previous').toggle(index > 0);

//   var atTheEnd = index >= $sections.length - 0;

//   $('.back_next_buttons .next').toggle(!atTheEnd);

//   $('.back_next_buttons [type = submit]').toggle(atTheEnd);
//   }

//   function currentIndex() {
//     return $sections.index($sections.filter('.current'));
//   }

//   $('.back_next_buttons .previous').click(function () {
//     navigateTo(currentIndex() - 1);
//   });

//   $('.back_next_buttons .next').click(function() {
//     if ($('.entire_form').parsley().validate({group: 'block-' + currentIndex()}))
//     navigateTo(currentIndex() + 1);
//   });

//   $sections.each(function(index, section) {
//     $(section).find(':input').attr('data-parsley-group', 'block-' + index);
//   });
//   navigateTo(0);
// });
