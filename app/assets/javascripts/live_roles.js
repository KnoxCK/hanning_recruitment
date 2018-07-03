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
    $(".all-roles").addClass("hidden");
    $(".all-roles .page.active").removeClass("active");
    $(".residential-roles").addClass("hidden");
    $(".residential-roles .page.active").removeClass("active");
    $(".commercial-roles").removeClass("hidden");
    $(".commercial-roles .page:first-child").addClass("active");
  })

  $(".btn-residential").click(function(e) {
    e.preventDefault();
    $(".all-roles").addClass("hidden");
    $(".all-roles .page.active").removeClass("active");
    $(".commercial-roles").addClass("hidden");
    $(".commercial-roles .page.active").removeClass("active");
    $(".residential-roles").removeClass("hidden");
    $(".residential-roles .page:first-child").addClass("active");
  })

  $(".scroll-btns .next").click(function() {
    var activePage = $(".page.active");
    if (activePage.next().hasClass("page")) {
      $('html,body').animate({
      scrollTop: $(".job-roles").offset().top - 100},
      1000);
      activePage.removeClass("active");
      activePage.next().addClass("active");
    }
  })

  $(".scroll-btns .prev").click(function() {
    var activePage = $(".page.active");
    if (activePage.prev().hasClass("page")) {
      $('html,body').animate({
      scrollTop: $(".job-roles").offset().top - 100},
      1000);
      activePage.removeClass("active");
      activePage.prev().addClass("active");
    }
  })
})
