$(document).ready(function() {
	$('td').on('click', function(e){
		event.preventDefault(e);
			square = $(this);
			row = $(this).parent().attr('class');
			cell = $(this).attr('class');
			coordinates = [parseInt(row), parseInt(cell)]

			console.log(coordinates);
			square.text("DEAD");
	});
});