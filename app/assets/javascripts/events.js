$(document).ready(function(){
  console.log("Ready!");
});

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
