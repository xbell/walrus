$(document).ready(function() {


$(".errors").click(function() {
   $(".popup").hide() ; });


$(".toggle").click(function() {
  $(".toggle").toggle().css("color", "#83bccd");
  $(".hide").toggle();
});

$(".toggle").hover(function() {
  $(this).css("text-decoration", "underline");
}, function() {
  $(this).css("text-decoration", "none");
});

// $(".blue_hover").hover(function () {
//   $(this).css("color", "#83bccd");
// }, function() {
//   $(this).css("color", "black");
// });


});
