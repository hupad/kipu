$(document).ready(function(){

	$("#convert_number").click(function(){
		
		var that = this;
		that.numberValue = $('.number_value_class').val();
		
		$.ajax({
			type: 'POST',
			url: '/humanize',
			data: {number: that.numberValue}
		}).done(function(msg){
			//$(".humanize_number").innerText = 
		}).fail(function(msg){

		});
	})

});