// $(document).on('click', '.register', function(e) {
//   $(".register-dropdown").removeClass("hidden");
//   $(".register-dropdown").addClass("slideDown");
//   $(".navbar-hanning").addClass("slideDown");
//   $(".navbar-hanning").removeClass("navbar-hanning-fixed");
//   $(".btn-register").addClass("hidden");
//   $(".btn-register-close").removeClass("hidden");

// 	e.preventDefault();
// });
// $(document).on('click', '.register-close', function(e) {
//   $(".register-dropdown").addClass("hidden");
//   $(".btn-register").removeClass("hidden");
//   $(".btn-register-close").addClass("hidden");
// 	e.preventDefault();
// });

$(document).ready(function() {
  $(".register").click(function(e){
    e.preventDefault();
    $(".register-dropdown").slideToggle();
    $(this).children().text(function(i, text) {
      return text === "Register" ? "Close" : "Register";
    });
  })
  $(".btn-upload-blue").click(function() {
    $(this).addClass("hidden");
    $(".btn-register-form").removeClass("hidden");
  })
})
