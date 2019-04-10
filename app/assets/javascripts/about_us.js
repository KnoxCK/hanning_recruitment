$(document).ready(function(){
  $(".team-circle").click(function(e){
    e.preventDefault();
    $(".team-circle img").removeClass("active");
    $(".bayfield-hr").addClass("hidden")
    $(this).children("img").addClass('active');
    $(".team-individual").removeClass("active");
    $($(this).data("target")).addClass("active");
    $('html,body').animate({
      scrollTop: $(".team-more-info").offset().top - 100},
      1000);
  });

  $(".team-individual i").on("click", function() {
    $('html,body').animate({
      scrollTop: $(".banner-small").offset().top},
      1000);
    window.setTimeout(function (){
      $(".team-individual").removeClass("active")},
       1000);
  });
});
