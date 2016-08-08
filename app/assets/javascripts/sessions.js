$(document).ready(function(){
	$('#logout').click(function(e){
		debugger
		e.preventDefault();
		$.ajax({
			url: 'sessions',
			method:"DELETE",
			success: function(){
				location.reload();
			}
		})
	})
})