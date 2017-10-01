$(document).on('turbolinks:load',function(){
	$('#scroll-to-content').on('click', function (event) {
	  event.preventDefault();

	  $('html,body').animate({
	      scrollTop: $('#main-content').offset().top -10
	  }, 1000);
	});
});