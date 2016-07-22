(function($){
	$(document).ready(function(){
		// Set the time at which the countdown expires.
		// var untilDate new Date(Year, Month - 1, Day)
		//-----------------------------------------------
		var untilDate = new Date(Date.UTC(2016, 7 - 1, 25, 18 - 1, 30));

		$(".countdown").countdown({
			until: untilDate,
			format: 'dHMS',
			padZeroes: true
		});

	}); // End document ready

})(this.jQuery);
