// Design Basic Game Solo Challenge


// This is a solo challenge

// Your mission description:
// Overall mission: Leprechaun collects 5 gold coins to have a full pot of gold
// Goals: collect gold coins, avoid trap
// Characters: leprechaun, gold coins, trap
// Objects: leprechaun(position, health, success, potOfGold, move), gold coins(name, position), trap(position)
// Functions: move for leprechaun, constructor function for coins, display coins

// Pseudocode
// CREATE a function to build a GoldCoin class that takes a name and creates random position coordinates
// SET 10 coin variables to new instances of the GoldCoin class
// SET a goldCoins variable equal to a list of the coins
// CREATE a function to display the coordinates for each coin
// SET a trap variable to random position coordinates
//
// SET a leprechaun variable to have a position of 0 for X & Y, potOfGold to 0, health to true,
// success false, and a move method
// CREATE a move method that takes a direction & number for the amount to move
//   UPDATE the leprechaun's coordinates based on the direction & number
//   DISPLAY the leprechaun's coordinates
//   IF the leprechaun's coordinates are equal to the trap's coordinates
//     UPDATE the leprechaun's health & display "Game Over"
//   ELSE IF the leprechaun's potOfGold is equal to 5
//     UPDATE the leprechaun's success & display "You Win"
//   ELSE iterate through the goldCoins list
//     IF the leprechaun's coordinates are equal to a coin's coordinates
//     DISPLAY "You found a coin"
//     INCREMENT the leprechaun's potOfGold by 1

// Initial Code
// function GoldCoin(coin) {
//   this.coin = coin;
//   this.posX = Math.floor(Math.random()*6 + 1),
//   this.posY = Math.floor(Math.random()*6 + 1)
// }

// var coin1 = new GoldCoin("Coin 1");
// var coin2 = new GoldCoin("Coin 2");
// var coin3 = new GoldCoin("Coin 3");
// var coin4 = new GoldCoin("Coin 4");
// var coin5 = new GoldCoin("Coin 5");
// var coin6 = new GoldCoin("Coin 6");
// var coin7 = new GoldCoin("Coin 7");
// var coin8 = new GoldCoin("Coin 8");
// var coin9 = new GoldCoin("Coin 9");
// var coin10 = new GoldCoin("Coin 10");

// var goldCoins = [ coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10];

// var displayCoins = function () {
//      for (var i = 0; i < goldCoins.length; i++) {
//       console.log(goldCoins[i].coin + "'s position is " + goldCoins[i].posX + "," + goldCoins[i].posY)
//     }
// }

// var trap = {
//   posX: Math.floor(Math.random()*6 + 1),
//   posY: Math.floor(Math.random()*6 + 1)
// };


// var leprechaun = {
//   posX: 0,
//   posY: 0,
//   potOfGold: 0,
//   health: true,
//   success: false,
//   move: function(direction, amount) {
//     if(direction === 'left'){
//       this.posX -= amount;
//     }
//     else if(direction === 'right'){
//       this.posX += amount;
//     }
//     else if(direction === 'up'){
//       this.posY -= amount;
//     }
//     else if(direction === 'down'){
//       this.posY += amount;
//     }

//     console.log("The leprechaun's position is " + this.posX + "," + this.posY);

//     if(this.posX === trap.posX && this.posY === trap.posY){
//       this.health = false;
//       return console.log("You're trapped and hurt. Game Over!");
//     }
//     else if(this.potOfGold === 5){
//       this.success = true;
//       return console.log("You're pot of gold is full, you win!!");
//     }
//     else {
//       for (var i = 0; i < goldCoins.length; i++) {
//         if (this.posX === goldCoins[i].posX && this.posY === goldCoins[i].posY) {
//           console.log("You found a gold coin!");
//           this.potOfGold += 1;
//         }
//       }
//     }

//   }

// };



// Refactored Code
function GoldCoin(coin) {
  this.coin = coin;
  this.posX = Math.floor(Math.random()*6 + 1),
  this.posY = Math.floor(Math.random()*6 + 1)
}

var coin1 = new GoldCoin("Coin 1");
var coin2 = new GoldCoin("Coin 2");
var coin3 = new GoldCoin("Coin 3");
var coin4 = new GoldCoin("Coin 4");
var coin5 = new GoldCoin("Coin 5");
var coin6 = new GoldCoin("Coin 6");
var coin7 = new GoldCoin("Coin 7");
var coin8 = new GoldCoin("Coin 8");
var coin9 = new GoldCoin("Coin 9");
var coin10 = new GoldCoin("Coin 10");

var goldCoins = [ coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10];

var displayCoins = function () {
     for (var i = 0; i < goldCoins.length; i++) {
      console.log(goldCoins[i].coin + "'s position is " + goldCoins[i].posX + "," + goldCoins[i].posY)
    }
}

var trap = {
  posX: Math.floor(Math.random()*6 + 1),
  posY: Math.floor(Math.random()*6 + 1)
};


var leprechaun = {
  posX: 0,
  posY: 0,
  potOfGold: 0,
  health: true,
  success: false,
  move: function(direction, amount) {
    switch(direction){
      case 'left': this.posX -= amount; break;
      case'right': this.posX += amount; break;
      case 'up': this.posY -= amount; break;
      case 'down': this.posY += amount; break;
    }

    console.log("The leprechaun's position is " + this.posX + "," + this.posY);

    if(this.posX === trap.posX && this.posY === trap.posY){
      this.health = false;
      console.log("You're trapped and hurt. Game Over!");
    }

    if(this.potOfGold === 5){
      this.success = true;
      console.log("You're pot of gold is full, you win!!");
    }

    for (var i = 0; i < goldCoins.length; i++) {
      if (this.posX === goldCoins[i].posX && this.posY === goldCoins[i].posY) {
        console.log("You found a gold coin!");
        this.potOfGold += 1;
      }
    }
  }

};


displayCoins();
leprechaun.move('down', 2);
leprechaun.move('right', 2);
leprechaun.move('right', 3);
leprechaun.move('left', 1);
leprechaun.move('down', 3);
leprechaun.move('left', 1);
leprechaun.move('left', 1);
leprechaun.move('up', 1);
leprechaun.move('up', 1);
leprechaun.move('right', 4);
displayCoins();
console.log(leprechaun.potOfGold);
console.log(leprechaun.success);
console.log(leprechaun.health);


// Reflection
/*
What was the most difficult part of this challenge?
Using the correct syntax and semantics was the most difficult part of this challenge.  When I would
test the code I would frequently receive the message 'SyntaxError: Unexpected token' or 'TypeError'.


What did you learn about creating objects and functions that interact with one another?
This challenge helped me to practice creating objects with functions as properties and using the
properties of other objects to update the value's in the object's properties.


Did you learn about any new built-in methods you could use in your refactored solution?
If so, what were they and how do they work?
Some methods I researched were filter, forEach, and findIndex but I wasn't able to successfully
implement them, so I focused on refactoring for readability and DRYness.


How can you access and manipulate properties of objects?
You can access properties of objects using dot or bracket notation and once you've accessed the object's
property you can update the value.  Using control flow techniques and functions you can manipulate
properties of objects based on the properties you accessed in your conditional statements and
change properties' values.
*/