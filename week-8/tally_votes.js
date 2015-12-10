// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
};

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
};

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
};

// Pseudocode
/*


FOR each voter in the votes variable
  SET a vote variable equal to the voter's values
  FOR each officer in vote
    IF officer's name exists as property in voteCount greater than or equal to 1
      INCREMENT the officer's name value by 1
    ELSE set the officer's name property in VoteCount to 1

CREATE a sortVotes function takes a keyed list of the talliedVotes
  SET sortedVotes variable to an empty list
  FOR each name in the talliedVotes
    ADD the name and amount of votes to the sortedVotes
  SORT the values in sortedVotes with highest name that has the most votes first
  RETURN the first value from sortedVotes

FOR each officer in voteCount
  SET each officer property in officers equal to the return value of sortVotes

*/

// __________________________________________
// Initial Solution
//Jenna's solution
for (var voter in votes) {
  var vote = votes[voter];
  for (var officer in vote) {
    if (voteCount[officer][vote[officer]] >= 1) {
      voteCount[officer][vote[officer]] += 1;
    } else {
      voteCount[officer][vote[officer]] = 1;
    }
  }
}

function sortVotes(talliedVotes) {
  var sortedVotes = [];
  for (var name in talliedVotes) {
    sortedVotes.push([name, talliedVotes[name]]);
  }
  sortedVotes.sort((a,b) => b[1] - a[1]);
  return sortedVotes[0][0];
}

for (var officer in voteCount) {
  officers[officer] = sortVotes(voteCount[officer]);
}



//Nicollette's solution
// for (var voter in votes) {
//   if (votes.hasOwnProperty(voter)) {
//   var ballot = votes[voter];
//   var presidentName = ballot.president;
//   var vicePresident = ballot.vicePresident;
//   var secretary = ballot.secretary;
//   var treasurer = ballot.treasurer;

//   if (voteCount.president[presidentName] === undefined ) {
//   voteCount.president[presidentName] = 1;
//   } else {
//   voteCount.president[presidentName] += 1;
//   }

//   if (voteCount.vicePresident[vicePresident] === undefined ) {
//   voteCount.vicePresident[vicePresident] = 1;
//   } else {
//   voteCount.vicePresident[vicePresident] += 1;
//   }

//   if (voteCount.secretary[secretary] === undefined ) {
//   voteCount.secretary[secretary] = 1;
//   } else {
//   voteCount.secretary[secretary] += 1;
//   }

//   if (voteCount.treasurer[treasurer] === undefined ) {
//   voteCount.treasurer[treasurer] = 1;
//   } else {
//   voteCount.treasurer[treasurer] += 1;
//   }
//  }
// };


// __________________________________________
// Refactored Solution
// for (var officeRole in voteCount) {
//   var votes = [];
//   var ballot = voteCount[officeRole];
//   for (var candidate in ballot) {
//   votes.push([candidate, ballot[candidate]]);
//   console.log(votes.sort(function(a,b){return b[1] - a[1] }));
//   }
//   officers[officeRole] = votes[0][0];
// }

// console.log(officers);






// __________________________________________
// Reflection
/*
**What did you learn about iterating over nested objects in JavaScript?
I learned that iterating over objects with each property's value as
a nested object is similar to iterating over a Ruby hash with each
value in a key-value pair as a nested hash.  However, there is
difference between Ruby & JavaScript because you'll have to iterate
over each nested object to see the property values in that object whereas
Ruby will show the values iterating over the first hash.  When iterating
over the first object in JavaScript it will return "[object Object]" for
the values rather than the properties in the nested object.

*Ruby*
people = {
    person1: {name: "Jenna", age: 30},
    person2: {name: "Ruben", age: 30},
    person3: {name: "Andy", age: 23},
    person4: {name: "Dianne", age: 56}
}

people.each do |key, value|
    puts "Key: #{key} Values: #{value}"
end

Output:
=> Key: person1 Values: {:name=>"Jenna", :age=>30}
=> Key: person2 Values: {:name=>"Ruben", :age=>30}
=> Key: person3 Values: {:name=>"Andy", :age=>23}
=> Key: person4 Values: {:name=>"Dianne", :age=>56}


*JavaScript*
var people = {
    person1: {name: "Jenna", age: 30},
    person2: {name: "Ruben", age: 30},
    person3: {name: "Andy", age: 23},
    person4: {name: "Dianne", age: 56}
};

for (var person in people) {
  console.log("Key: " + person + " Values: " + people[person]);
}
Output
=> Key: person1 Values: [object Object]
=> Key: person2 Values: [object Object]
=> Key: person3 Values: [object Object]
=> Key: person4 Values: [object Object]


for (var person in people) {
  for ( var info in people[person]) {
    console.log("Key: " + person + " Values: " + info + " " + people[person][info]);
  }
}

Output:
=> Key: person1 Values: name Jenna
=> Key: person2 Values: name Ruben
=> Key: person2 Values: age 30
=> Key: person3 Values: name Andy
=> Key: person3 Values: age 23
=> Key: person4 Values: name Dianne
=> Key: person4 Values: age 56

Were you able to find useful methods to help you with this?
The sort method was useful in finding which person had the most votes by
sorting the values in the array and accessing the value and name at the
index 0 and assigning it as the value for each property's value in the
officers variable.
You can use the sort callback function:
arr.sort(function(a, b) {return a - b})
Or the arrow function:
arr.sort((a,b) => a - b)

What concepts were solidified in the process of working through this challenge?
Some concepts that were solidified were:
*using for...in loops to iterate over objects and nested objects
*the difference in using dot and bracket notation


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)