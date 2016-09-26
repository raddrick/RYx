(function($){
	$(document).ready(function(){
		// Set the time at which the countdown expires.
		// var untilDate new Date(Year, Month - 1, Day, Hours - 1, minutes)
		//-----------------------------------------------
		var untilDate = new Date(Date.UTC(2016, 9 - 1, 26, 20 - 4, 0));

		$(".countdown").countdown({
			until: untilDate,
			format: 'dHMS',
			padZeroes: true
		});

	}); // End document ready

})(this.jQuery);
