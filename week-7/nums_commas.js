// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// input an integer: 12345678
// output astring: "12,345,678"
// first is to convert the number into a string: "12345678"
// reverse the string: "87654321"
// if the string.length is less than 4, then return the original integer in a string
// if the string.length is greater than 4, use for loop method to iterate over the string to insert the comma, then reverse the string

// Initial Solution
var separateComma = function (num) {

  var num_string = String(num);
  var num_string_reverse = num_string.split("").reverse().join("");

  if (num_string_reverse.length < 4 ) {
    return num_string_reverse.split("").reverse().join("");
  }

  for ( var i = 3; i < num_string_reverse.length; i += 4) {
    num_string_reverse = [num_string_reverse.slice(0, i), ",", num_string_reverse.slice(i)].join("");
  }

  return num_string_reverse.split("").reverse().join("");
};

console.log(separateComma(123))
console.log(separateComma(1233))
console.log(separateComma(12345))
console.log(separateComma(123456))
console.log(separateComma(123456789))
// Refactored Solution
function separateComma (num) {

  var num_string = String(num).split("").reverse().join("");

  for ( var i = 3; i < num_string.length; i += 4) {
    num_string = [num_string.slice(0, i), ",", num_string.slice(i)].join("");
  }

  return num_string.split("").reverse().join("");
};

console.log(separateComma(123))
console.log(separateComma(1233))
console.log(separateComma(12345))
console.log(separateComma(123456))
console.log(separateComma(123456789))


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?


What did you learn about iterating over arrays in JavaScript?


What was different about solving this problem in JavaScript?


What built-in methods did you find to incorporate in your refactored solution?


*/