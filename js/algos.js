//Release 0: Find the Longes Word
//set function to take array
  //set new variable largevalue to equal first value of array
  //starting from the second value, compare length with largevlaue
    // if array value is higher than large value, set largevalue to array value
  //print largevlaue

function longest(array) {
  var highlength = array[0];
  for (var i = 1; i < array.length; i++) {
    if (array[i].length >= highlength.length) {
      highlength = array[i];
    }
  }
  console.log(highlength);
}
//Release 1: Find a Key-Value Match
//Declare new function that takes two objects
  //IF age OR
  //Store obects into hash
  //For each object, check if either

function Compare_pair(pairone, pairtwo) {
  if ((pairone.name == pairtwo.name) || (pairone.age == pairtwo.age)) {
    return true
  }  else {
    return false
  }
}

//Release 0 driver code
var arr = ["long phrase", "even longer phrase", "longer phrase", "longest phrase"];
var arr3 = ["one", "two", "onethousand", "three", "seventeen"];

longest(arr);
longest(arr3);

//Release 1 driver code
var Steve = {name: "Steven", age: 54};
var Tami =  {name: "Tamir"
, age: 54};
var Bob = {name: "Bob", age: 5};
var Bob2 = {name: "Bob", age: 7}

console.log(Compare_pair(Steve, Tami));
console.log(Compare_pair(Bob, Bob2));
console.log(Compare_pair(Steve, Bob));
//Release 2 driver code