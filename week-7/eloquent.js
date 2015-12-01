// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 25;
console.log((number + number) * number)

// function favorite_food() {
//   var food = prompt("What is your favortie food?", "");
//   alert( food.toUpperCase() + "! That's my favorite food too!");
// }
// favorite_food();

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle
var hashLine = "";
for (var i = 0; i < 7; i++) {
  hashLine += "#";
  console.log(hashLine);
};

// FizzBuzz
for (var i = 0; i <=100; i++) {
  if (i%3==0 && i%5==0) {
    console.log('FizzBuzz');
  } else if (i%3==0) {
    console.log('Fizz');
  } else if (i%5==0) {
    console.log('Buzz');
  } else {
    console.log(i);
  }
};
// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
  if (num1 > num2) {
    return num1;
  } else {
    return num2;
  }
};

console.log(min(5, 35));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: 'Jenna',
  age: 30,
  favorite_foods: ['chocolate', 'bread', 'pizza'],
  quirk: "I always have gum or mints with me."
};
