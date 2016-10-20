$(document).on('turbolinks:load', function(){
  console.log("Ready!");
	//prevent default behavior for all disabled anchor tags
	jQuery('.disabled').on('click', function(event) {
		event.preventDefault()
	})

	$(".no-enter-form").on("keypress", function (e) {
    	if (e.keyCode == 13) {
        	return false;
    	}
	});

	// grab value of how user was feeling before and after event and highlight those values
	setFeelingValuesOnLoad('before')
	setFeelingValuesOnLoad('after')

	// grab boolean values for each of the reasons and if true, highlight that reason button
	highlightReasonsOnLoad(1);
	highlightReasonsOnLoad(2);
	highlightReasonsOnLoad(3);

	// set radio buttons for how user was feeling before and after event
	radioButtons('before-feeling', 'before-input', 2, 13);
	radioButtons('after-feeling', 'after-input', 20, 31);

	//list all of our toggle buttons
	setHiddenToggles('form-one-next', 'form-one', 'form-two', 'tab-activate-two');
	setHiddenToggles('form-two-next', 'form-two', 'form-three', 'tab-activate-three');
	setHiddenToggles('form-three-next', 'form-three', 'form-four', 'tab-activate-four');
	setHiddenToggles('form-two-back', 'form-two', 'form-one', 'tab-activate-one');
	setHiddenToggles('form-three-back', 'form-three', 'form-two', 'tab-activate-two');
	setHiddenToggles('form-four-back', 'form-four', 'form-three', 'tab-activate-three');

	//set tab click listeners so that forms change on tab click
	tabClick('tab-one', 'form-one', 'form-two', 'form-three', 'form-four');
	tabClick('tab-two', 'form-two', 'form-one', 'form-three', 'form-four');
	tabClick('tab-three', 'form-three', 'form-one', 'form-two', 'form-four');
	tabClick('tab-four', 'form-four', 'form-one', 'form-two', 'form-three');

	//make the reasons for action clickable
	reasonToggles('checkbox-1');
	reasonToggles('checkbox-2');
	reasonToggles('checkbox-3');
})

function reasonToggles(reasonClicked) {
	$('#' + reasonClicked).on('click', function() {
		text = $(this).text();
		$($(this).children()[0]).toggleClass('checkbox');
		$($(this).children()[0]).toggleClass('checkbox-active');
		value = $('#' + 'input-' + reasonClicked).val();
		if (value == 'true') {
			value = false
		}
		if (value == 'false') {
			value = true
		}
		$('#' + 'input-' + reasonClicked).attr('value', value);
	})
}
// set the click listener for hiding current form-box and showing the next or previous, for user with
// next and back buttons
function setHiddenToggles(clickedButton, firstBox, secondBox, tabToBe){
	$('#' + clickedButton).on('click', function(event) {
		event.preventDefault();
		console.log($(this).text());
		$('#' + firstBox).addClass('hidden');
		$('#' + secondBox).removeClass('hidden');
		$('#' + secondBox).addClass('animated fadeIn');
		$('ul.tabs').tabs('select_tab', tabToBe);
	})
}
function tabClick(clickedTab, boxToShow, box1ToHide, box2ToHide, box3ToHide) {
	$('#' + clickedTab).on('click', function() {
		$('#' + box1ToHide).addClass('hidden');
		$('#' + box2ToHide).addClass('hidden');
		$('#' + box3ToHide).addClass('hidden');
		$('#' + boxToShow).removeClass('hidden animated fadeIn');
		$('#' + boxToShow).addClass('animated fadeIn');
		$(this).addClass('active');
		for(var i = 0; i < $(this).parent().siblings().length; i++){
			$($($(this).parent().siblings()[i]).children()[0]).removeClass('active');
		}
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

function highlightReasonsOnLoad(number) {
	if ($('#input-checkbox-' + number).attr('value') == 'true') {
		$($('#checkbox-' + number).children()[0]).toggleClass('checkbox-active')
		$($('#checkbox-' + number).children()[0]).toggleClass('checkbox')
	}
}

function setFeelingValuesOnLoad(timeOfValue) {
	value = $($('.' + timeOfValue + '-input')[0]).attr('value');
	$($('#' + timeOfValue + '-' + String(value)).children()[0]).removeClass('number-box');
	$($('#' + timeOfValue + '-' + String(value)).children()[0]).addClass('number-box-reversed');
}