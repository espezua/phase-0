# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Input: takes a list(array) of labels(strings)
# Output:
#  .roll: returns a random label from the list
#  .side: returns the number of sides on the die
# Steps:
=begin
CLASS Die takes one parameter for the labels of the sides of a die
  DEF initialize the labels for the sides of the die class
    WHILE the list is empty
      raise an argument error ("The array can't be empty.")
    END
    INIT an instance variable for
  END
  DEF a method for sides
    return the length of the list for the number of sides
  END
  DEF a method for rolling a die
    return the first item in the list after it's rearranged
  END
END
=end
# Initial Solution

class Die
  def initialize(labels)
    while labels.empty?
      raise ArgumentError.new ("The array can't be empty.")
    end
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle.slice(0)
  end
end


# Refactored Solution
class Die
  def initialize(labels)
    raise ArgumentError.new ("The array can't be empty.") while labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# Reflection
=begin
What were the main differences between this die class and the last one you created in
terms of implementation? Did you need to change much logic to get this to work?

Most of the logic stayed the same like initializing a variable for the sides(labels), raising
an ArgumentError for invalid arguments, returning the number of sides on the die, and
returning a random value for the die when the roll method is called.

The main differences are:
Die Class 1                                    Die Class 2
*argument: a number for the sides            *argument: an array of strings
*ArgumentError: raise if the number          *ArgumentError: raise if the array is empty
 is less than 1                              *sides: returns the length of the array
*roll: returns a random number from          *roll: returns a random string(label) from the array
 1 to the number of sides


What does this exercise teach you about making code that is easily changeable or modifiable?
You can make your life easier by creating code that is DRY and easy to understand. When you
look back at the code later it will be easier to remember why you implemented something in a
particular way.  Also, it allows for the code to be reused for something else by making
a few simple edits.


What new methods did you learn when working on this challenge, if any?
A new method I learned about was the Array#sample method that chooses a random element or
n random elements from an array.


What concepts about classes were you able to solidify in this challenge?
Some concepts about classes there were solidified are:
*initializing variables at the beginning of your class
*you can use instance variables across multiple methods


=end
