$(document).ready(function(){
  $(".navbar-fixed").hide();
  $(function () {
    $(window).scroll(function () {
      if ($(this).scrollTop() > 200) {
        $('.navbar-fixed').fadeIn()
      } else {
        $('.navbar-fixed').fadeOut();
      }
    });
  })


}(jQuery));

$(function() {
    $(".button").click(function() {
        $("#myform #valueFromMyButton").text($(this).val().trim());
        $("#myform input[type=text]").val('');
        $("#myform").show(500);
    });
    $("#btnOK").click(function() {
        $("#valueFromMyModal").val($("#myform input[type=text]").val().trim());
        $("#myform").hide(400);
    });
});
