$(document).ready(function(){
	setTimeout(function() {
    $(".test1").addClass("fadeIn");
	}, 5000);
    setTimeout(function() {
    $(".test1").addClass("hidden");
    $(".test2").removeClass("hidden");
    }, 15000);
    setTimeout(function() {
    $(".test2").addClass("hidden");
    $(".test3").removeClass("hidden");
    }, 25000);
    
})
