// set a function named reverse with one variable
//set loop to count down from length of string to zero
//for each letter in the string, add to new string
//print new string

function reverse(string) {
  var str = '';
  for (var i = string.length - 1; i >= 0; i-- ) {
  str = str + string[i];
}
  console.log(str);
}

reverse("test case");

if (5 + 5 == 10) {
  reverse("The statement is true!");
}
else {
  console.log("Statement was not true");
}