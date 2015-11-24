# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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
    @side = @labels.length
  end

  def roll
    @roll = @labels.shuffle.slice(0)
  end
end


# Refactored Solution
class Die
  def initialize(labels)
    raise ArgumentError.new ("The array can't be empty.") while labels.empty?
    @labels = labels
  end

  def sides
    @side = @labels.length
  end

  def roll
    @roll = @labels.sample
  end
end



# Reflection
=begin
What were the main differences between this die class and the last one you created in
terms of implementation? Did you need to change much logic to get this to work?


What does this exercise teach you about making code that is easily changeable or modifiable?


What new methods did you learn when working on this challenge, if any?


What concepts about classes were you able to solidify in this challenge?


=end
