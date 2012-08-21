// moving like animation for the bootstrap progress bar

$(document).ready(function(){
	$('.progress').live('mouseover', function(){
		$(this).addClass('active')
		$(this).mouseleave(function(){
			$(this).removeClass('active')
		})
	})
})