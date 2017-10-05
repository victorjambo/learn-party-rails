$(document).on('turbolinks:load',function(){
	$('#scroll-to-content').on('click', function (event) {
	  event.preventDefault();

	  $('html,body').animate({
	      scrollTop: $('#main-content').offset().top -10
	  }, 1000);
	});
	$('#uploadAvatar').on('click', function (event) {
    event.preventDefault();
    $('#avatar').click();
  });

 $('#avatar').on("change", function () {
    $('#uploadAvatar')
        .removeClass('btn-success')
        .addClass('btn-default')
        .html('<i class="fa fa-spinner fa-spin"></i> Uploading avatar... ');

    $('.uploadAvatar').submit();
  });
});