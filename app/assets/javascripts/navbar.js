$(document).ready(function(){
  var path = window.location.pathname;
  $(".navbar-links a").each(function(){
    if ($(this).attr('href') === path) {
      $(this).addClass('active');
    }
  })
})
