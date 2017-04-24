;(function($){
	// registration form validation
	$("#registration").validate({
		errorClass : 'text-danger',
		rules : {
			password : "required",
			c_passwd : {
				equalTo : "#password"
			}
		}
	});
	console.log(jQuery().jquery);
})(jQuery);

