##Numbers, Letters, and Variables

###What does puts do?
The method puts prints the output of what came after it to the console's screen with a new line and it returns nil.

###What is an integer? What is a float?
An integer is a number without a decimal point like -20, 499, and 555.  A float is a number with decimal point like 1.0082, 2.2, and -34.579.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integer divison will only give you integer answers and will round down the answer to be an integer, meaning it ditches the remainder.  For example, when dividing 11/2 you would get 5 rather than 5.5.  Where as float divison will return a specific answer with a decimal point, so dividing 5.0/2.0 will give you 2.5.


###Mini-Challenges

####Hours in a Year
```
puts (24 * 365).to_s + " hours in a year"
````

####Minutes in a Decade
```
puts (60 * 24 * 365 * 10).to_s + " minutes in a decade"
````


####Exercises
https://github.com/espezua/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/espezua/phase-0/blob/master/week-4/simple-string.rb

https://github.com/espezua/phase-0/blob/master/week-4/basic-math.rb


###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby uses:
```
addition: +
subtraction: -
multiplication: *
division: /
```


###What is the difference between integers and floats?
Integers are non-decimal numbers and floats are decimal numbers.


###What is the difference between integer and float division?
Integer division will give you an integer answer and round down your answer to the nearest integer if the answer has a remainder.  Float division will return an answer with the remainder shown in decimal form.


###What are strings? Why and when would you use them?
Strings are a group of characters within single or double quote marks.  The characters in strings could be punctuation, digits, symbols, spaces, and letters but strings can also be empty.  Strings are used to store text which you can add and multiply when using the correct syntax.


###What are local variables? Why and when would you use them?
Local variables are variables declared inside a function.  This gives the variable a local scope and means they are recognized by only the blocks of code they were declared in.  Using local variables prevents your global variable environment from becoming cluttered and they are faster to access than global variables.


###How was this challenge? Did you get a good review of some of the basics?
I thought this challenge was simple and a good review of numbers, letters, and variables.  It felt like I was being eased in to using test driven development.

