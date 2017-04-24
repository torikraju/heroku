$(document).ready(function() {

	$( "#registration" ).validate({
		errorClass: 'text-danger',  
		rules: {
		    password: "required",
		    c_passwd: {
		      equalTo: "#password"
		    }
		  }
		});

});
