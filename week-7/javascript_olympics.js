// JavaScript Olympics

// I paired on this challenge with Matthew Oppenheimer.

// This challenge took me 2 hours.


// Warm Up


// Bulk Up
var athletes = [{name: "Sarah Hughes", event: "Ladies Singles"},{name: "Michael Phelps", event: "Swimming"}, {name: "Apollo Antono", event: "Speed Skating"} ];

var athletesWin = function (array) {
  for (var i = 0; i < array.length; i++) {
    console.log(array[i].win = array[i].name + " won the " + array[i].event + "!");
  }
};

athletesWin(athletes);


// Jumble your words
var reverseString = function (words) {
  return words.split("").reverse().join("");
};
var sentence = "It is Thursday";
console.log(reverseString(sentence));



// 2,4,6,8
var evens = function (array) {
  var newArray = [];
  for (var i = 0 ; i < array.length; i++)
    if (array[i] % 2 == 0) {
    newArray.push(array[i]);
  }
  console.log(newArray);
}

evens([1,2,3,4,5,6,]);
//Refactored Solution
var evens = function (array) {
  return array.filter(function(i) { return i%2==0 });
}

console.log(evens([1,2,3,4,5,6,7,8]));


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

michaelPhelps.medal = "gold";

console.log(michaelPhelps.name)
console.log(michaelPhelps.age)
console.log(michaelPhelps.sport)
console.log(michaelPhelps.quote)
console.log(michaelPhelps.medal)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I feel I improved my knowledge of Javascript's syntax for
functions & for loops, building constructor functions, and
accessing properties in objects.


What are constructor functions?
Constructor functions allow you to define a set of properties
and methods for an object.  When you call the constructor
it creates a new object that is an instance of the constructor
and inherits all of the properties & methods of its constructor's
prototype.


How are constructors different from Ruby classes (in your research)?
In Ruby, classes are objects, each class has methods associated with
an object's class and instances of a particular class have methods
associated with an instance of that class.

Objects in JavaScript don't have a formal class that defines how to
create an instance or its behavior. A constructor in JavaScript can be
any function that defines a 'class' with a set of properties and methods,
which are responsible for creating new instances.  Prototypes in JavaScript
can be any object and they are responsible for defining the behavior of
instances but they don't have special methods or properties.


*/