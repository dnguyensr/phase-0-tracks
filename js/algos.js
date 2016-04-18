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
  return highlength
}
//Release 1: Find a Key-Value Match
//Declare new function that takes two variables
  //variables should be key-value pairs with keys name and age
  //IF name OR age is the same
  //return true
  //otherwise, return false

function Compare_pair(pairone, pairtwo) {
  if ((pairone.name == pairtwo.name) || (pairone.age == pairtwo.age)) {
      return true
  } else {
      return false
  }
}

//Release 2: Generate Random Test Data
//Declare function with one integer variable
  //set variable with letters
  //set variable as empty container
  //FOR the quantity of the integer variable, store that many random strings to array
    //Generate random number between 1 and 10
    //set empty string variable
    //FOR the number of times the random number is generated (1-10), add that many random letters from letters variable to string
      //add to empty container

function Generate_data(wordqty){
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var array2 = [];

  for (var a=0; a < wordqty; a++) {
    var word = "";
    var num1 = Math.floor((Math.random() *10) +1);

    for (var i = 0; i < num1; i++) {
      word += letters.charAt(Math.floor(Math.random()* letters.length))
    }
    array2.push(word);
}
  console.log(array2);
  return array2;
}

function driver_code(quantity) {
  for (var b=1; b < (quantity + 1); b++) {
    var c = Generate_data(Math.floor((Math.random() *10) +1))
    var d = longest(c)
  }
}

//Release 0 driver code
console.log("----- longest driver code -----");
var arr2 = ["long phrase", "even longer phrase", "longer phrase", "longest phrase"];
var arr3 = ["one", "two", "onethousand", "three", "seventeen"];

longest(arr2);
longest(arr3);

//Release 1 driver code
console.log("----- compare_pair driver code -----");
var Steve = {name: "Steven", age: 54};
var Tami =  {name: "Tamir", age: 54};
var Bob = {name: "Bob", age: 5};
var Bob2 = {name: "Bob", age: 7}

console.log(Compare_pair(Steve, Tami));
console.log(Compare_pair(Bob, Bob2));
console.log(Compare_pair(Steve, Bob));

//Release 2 driver code
console.log("----- Generate_data driver code -----");
Generate_data(3);
Generate_data(5);

console.log("----- driver_code driver code -----");
driver_code(10);
