console.log("It works!");

function tears(){
  var photo = document.getElementById("tears");
  photo.style.display = "block";
}

var body = document.getElementById("body");
body.addEventListener("click", tears);

//Event with timer
//window.setTimeout(tears, 2000);