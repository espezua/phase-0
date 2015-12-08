/*
Gradebook from Names and Scores

I worked on this challenge with Nick Davies
This challenge took me 1 hour.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.
var gradebook = {};
for (var index in students){
  gradebook[students[index]] = {};
  gradebook[students[index]].testScores = scores[index];
}
gradebook.addScore = function (name,score){
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){ return average(gradebook[name].testScores)};

function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum/array.length
}

// __________________________________________
// Refactored Solution
var gradebook = {};
for (var index in students){
  gradebook[students[index]]={testScores: scores[index]};
}
gradebook.addScore = function (name,score){
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){ return average(gradebook[name].testScores)};

function average(array) {
  return array.reduce((prev,curr)=>prev+curr)/array.length;
}


// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
I learned it was very easy to assign a function as the value of a
property in an object or to declare a function on an object. Also,
it was really helpful to practice using dot and bracket notation
to better understand which should be used depending on the parameters
you'll be passing to functions or an object's functions.


How did you iterate over nested arrays in JavaScript?
We iterated over nested arrays using a for loop and bracket notation
for accessing name values to go through each element of students to
add them as an object in our gradebook with each student property having
the property of testScores with an array of values from scores.


Were there any new methods you were able to incorporate?
If so, what were they and how did they work?
When refactoring we used the reduce method in the average function,
which applies a function  against an accumulator and each value of
the array, from left-to-right, that reduces the array to a single value.

You can use the callback function syntax:
 arr.reduce(function(previousValue, currentValue, currentIndex, array) {
  return previousValue + currentValue;
});

Or the Arrow Function(we used this format):
arr.reduce( (prev, curr) => prev + curr );

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)