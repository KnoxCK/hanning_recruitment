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
    $("residential-roles").addClass("hidden");
    $(".commercial-roles").removeClass("hidden");
  })

  $(".btn-residential").click(function(e) {
    e.preventDefault();
    $(".all-roles").addClass("hidden");
    $(".commercial-roles").addClass("hidden");
    $(".residential-roles").removeClass("hidden");
  })

  $(".scroll-btns .next").click(function() {
    var activePage = $(".page.active");
    if (activePage.next().hasClass("page")) {
      activePage.removeClass("active");
      activePage.next().addClass("active");
    }
  })

  $(".scroll-btns .prev").click(function() {
    var activePage = $(".page.active");
    if (activePage.prev().hasClass("page")) {
      activePage.removeClass("active");
      activePage.prev().addClass("active");
    }
  })
})
