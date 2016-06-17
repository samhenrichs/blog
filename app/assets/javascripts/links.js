$(document).ready(function() {

	$('.submit').click(function() {
		$('.link').submit();
		$('.campaign').submit();
		$('.output').text("Working?");
	});

});