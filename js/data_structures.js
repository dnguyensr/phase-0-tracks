var colors = ["red", "white", "blue", "green"];
var names = ['Carl', 'Daryl', 'Glenn', 'T-Dogg'];

//color.push("pink");
//names.push("Lucille");

//console.log(color);
//console.log(names);
function pair_horses(name, color) {
  var horses = {};
  for (var i = 0; i < (color.length); i++) {
    horses[name[i]] = color[i];
  }
  console.log(horses);
}

console.log(pair_horses(names,colors));

function Car(year, color) {
  console.log("New car:", this);

  this.year = year;
  this.color = color;

  this.honk = function() { console.log("*honk* *honk*");};
  console.log("New car is ready to roll!");
}

var newCar = new Car(2020, "blue");
console.log(newCar);
newCar.honk();

var sweetRide = new Car(2020, "blue");
console.log(sweetRide);
sweetRide.honk();