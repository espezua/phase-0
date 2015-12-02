// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Yi Lu.

// Pseudocode
// input an integer: 12345678
// output astring: "12,345,678"
// first is to convert the number into a string: "12345678"
// reverse the string: "87654321"
// if the string.length is less than 4, then return the original integer in a string
// if the string.length is greater than 4, use for loop method to iterate over the string to insert the comma, then reverse the string

// Initial Solution
// var separateComma = function (num) {

//   var num_string = String(num);
//   var num_string_reverse = num_string.split("").reverse().join("");

//   if (num_string_reverse.length < 4 ) {
//     return num_string_reverse.split("").reverse().join("");
//   }

//   for ( var i = 3; i < num_string_reverse.length; i += 4) {
//     num_string_reverse = [num_string_reverse.slice(0, i), ",", num_string_reverse.slice(i)].join("");
//   }

//   return num_string_reverse.split("").reverse().join("");
// };

// console.log(separateComma(123));
// console.log(separateComma(1233));
// console.log(separateComma(12345));
// console.log(separateComma(123456));
// console.log(separateComma(123456789));
// Refactored Solution
function separateComma (num) {

  var num_string = String(num).split("").reverse().join("");

  for ( var i = 3; i < num_string.length; i += 4) {
    num_string = [num_string.slice(0, i), ",", num_string.slice(i)].join("");
  }

  return num_string.split("").reverse().join("");
};

// console.log(separateComma(123));
// console.log(separateComma(1233));
// console.log(separateComma(12345));
// console.log(separateComma(123456));
// console.log(separateComma(123456789));


// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  separateComma instanceof Function,
  "separateComma should be a function.",
  "1. "
)


console.log(separateComma(123));
console.log(separateComma(1233));
console.log(separateComma(12345));
console.log(separateComma(123456));
console.log(separateComma(123456789));
// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?
Many of the ideas were similar like converting the number to a string,
then array, iterating through the array to place commas in the appropriate spot,
and joining the array to return the number as a string.  The approach to this
problem in JavaScript compared to how I solved it in Ruby was different because we
reversed the array and then used a method that allowed us to insert commas
in sections of the array.


What did you learn about iterating over arrays in JavaScript?
I learned you can use a for loop to iterate over sections of arrays depending on
the conditions used for the three statements and you can modify the elements
in an array by adding elements with methods like slice.


What was different about solving this problem in JavaScript?
We reversed the string and used a for loop to iterate over sections of the array.
To do this we started the iteration at 3, compared the iteration's value to the
sting's length, and incremented each iteration by 4 using the Array.slice method
to insert commas.


What built-in methods did you find to incorporate in your refactored solution?
When refactoring we didn't incorporate any new built-in methods but focused on
making sure our code was DRY, deleted unnecessary lines/words in our code, and
evaluated the variable names.

*/