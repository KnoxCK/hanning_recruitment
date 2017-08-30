$(document).ready(function(){
  $(".team-circle").click(function(e){
    e.preventDefault();
    $(".team-circle img").removeClass("active");
    $(this).children("img").addClass('active');
    $('html,body').animate({
      scrollTop: $(".team-more-info").offset().top - 100},
      1500);
  });
});
