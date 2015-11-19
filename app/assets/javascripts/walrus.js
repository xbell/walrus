$(document).ready(function() {


$(".errors").click(function() {
   $(".popup").hide() ; });


$(".toggle").click(function() {
  $(".toggle").toggle().css("color", "#95b9e3");
  $(".hide").toggle();
});

$(".toggle").hover(function() {
  $(this).css("text-decoration", "underline");
}, function() {
  $(this).css("text-decoration", "none");
});



});
