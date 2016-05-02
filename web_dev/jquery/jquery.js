console.log("js is working");

$("p").css("color", "white")

$("li.steps").click(function() {
   $("li.steps").not(this).find("ol").hide();
   $(this).find("ol").toggle();
});

//non-working animate
//$(".head").animate({right: 280}, 500);