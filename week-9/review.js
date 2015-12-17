/*
Release 1:  User Stories
As a user, I want to be able to create a new list
As a user, I want to be able to add an item with a quantity to the list
As a user, I want to be able to remove an item from the list
As a user, I want to be able to update quantities for items in the list
As a user, I want to be able to print the list


Release 2:  Psuedocode
CREATE an object called "List"
  CREATE a function that adds an item & quantity to the items list
  CREATE a function removes an item from the items list
  CREATE a function that updates the quantity of an item in the items list
  CREATE a function that prints all the things in the items list

*/
//Release 3: Initial Solution
function List () {
  this.addItem = function (item, qty){
    this[item]=qty;
  };
  this.removeItem = function (item){
    delete this[item];
  };
  this.updateItem = function (item, qty){
    this[item]=qty;
  };
  this.printList = function () {
    for (var item in this) {
      if (typeof this[item] != "function") {console.log(item + ": " + this[item])}
    }
  };
}
//Release 4: Refactor
/*Object.entries() method looks like it could be useful but it is
an experimental technology, part of the ECMAScript 2016 (ES7) proposal
and it's only supported by FireFox.
*/
function List() {
  this.addItem = function(item, qty) {this[item]=qty};
  this.removeItem = function(item) {delete this[item]};
  this.updateItem = this.addItem;
  this.printList = function() {
    for (var item in this) {
      if (typeof this[item] != "function") {console.log(item + ": " + this[item])}
    }
  };
}

var groceryList = new List();
groceryList.addItem("apples", 4);
groceryList.addItem("eggs", 12);
groceryList.addItem("ice cream", 1);
groceryList.addItem("bread", 1);
groceryList.addItem("cheese", 1);
groceryList.addItem("banana", 2);
groceryList.printList();
groceryList.removeItem("ice cream");
groceryList.printList();
groceryList.updateItem("banana", 4);
groceryList.printList();


//Release 5: Reflection
/*
What concepts did you solidify in working on this challenge?
(reviewing the passing of information, objects, constructors, etc.)
This challenge helped me to practice the concepts- constructor functions
and creating functions within the constructor that you pass information to.

What was the most difficult part of this challenge?
The most difficult part was figuring out how to create the printList method
so that it only printed the list items and quantities and not the defined
methods as well.

Did an array or object make more sense to use and why?
An object made more sense to use because an item and its quantity
are linked in key-value pairs.

*/