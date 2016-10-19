$(document).on('turbolinks:load', function() {
	if (window.location.search.substr(1) == 'professionals'){
		$('#user_is_prof').val(true);
	}
});