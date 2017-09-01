$(document).ready(function(){
	setTimeout(function() {
    $(".banner-content").addClass("fadeOut");
	}, 1800);
	setTimeout(function() {
    $(".banner-content").addClass("hidden");
    $(".landing-transparent").addClass("hidden");
    $(".menu-circles").removeClass("hidden");
    $(".home-strip").removeClass("hidden");
    $(".landing-hanning").removeClass("hidden");
	}, 3000);
})