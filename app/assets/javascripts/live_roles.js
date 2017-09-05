$(document).ready(function() {
  $(".job-role").click(function() {
    $(".live-roles-more-info").removeClass("active");
    $($(this).data("target")).addClass("active");
    $('html,body').animate({
      scrollTop: $(".live-roles-more-info-wrapper").offset().top - 100},
      1000);
  })

  $(".btn-commercial").click(function(e) {
    e.preventDefault();
    $("#residential").addClass("hidden");
    $("#commercial").removeClass("hidden");
  })
  $(".btn-residential").click(function(e) {
    e.preventDefault();
    $("#commercial").addClass("hidden");
    $("#residential").removeClass("hidden");
  })
})
