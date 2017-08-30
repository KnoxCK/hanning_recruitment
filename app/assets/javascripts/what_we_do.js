$(document).ready(function(){
  $(".sector-circle").click(function(e){
    e.preventDefault();
    $(".sector-circle img").removeClass("active");
    $(this).children("img").addClass('active');
    $('html,body').animate({
      scrollTop: $(".sector-more-info").offset().top - 100},
      2000);
  });
});
