$(document).ready(function(){
	$('#logout').click(function(e){
		e.preventDefault();
		$.ajax({
			url: '/sessions',
			method:"DELETE",
			fail: function(){
				location.reload();
			}
		})
	})
})