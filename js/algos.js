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

var arr = ["long phrase", "even longer phrase", "longer phrase", "longest phrase"];
var arr3 = ["one", "two", "onethousand", "three", "seventeen"];

longest(arr);
longest(arr3);

//Release 1: Find a Key-Value Match