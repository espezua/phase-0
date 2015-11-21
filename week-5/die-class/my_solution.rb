# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: takes a number for the sides of a die
# Output:
#  .roll: returns a random number between 1 and the number of sides
#  .side: returns the number of sides
# Steps:
=begin
CLASS Die takes one parameter for the number of sides
  DEF initialize the number of sides for the die class
    WHILE sides < 1
      raise an argument error ("Please try again. Only numbers 1 or greater allowed.")
    END
    INIT an instance variable for sides
  END

  DEF a method for sides
    return the number of sides
  END

  DEF a method for rolling a die
    return a random number between 1 and the number of sides
  END
END
=end

# 1. Initial Solution

class Die
  def initialize(sides)
    while sides < 1
      raise ArgumentError.new("Please try again. Only numbers 1 or greater allowed.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    raise ArgumentError.new("Only numbers 1 or greater allowed.") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end

=begin
die1 = Die.new(5)
p die1.sides
p die1.roll

die2 = Die.new(0)
p die2.sides
p die2.roll
=end


# 4. Reflection
=begin
**What is an ArgumentError and why would you use one?
An ArgumentError is raised when the wrong arguments are passed and there isn't a more specific
Exception class. When the wrong number of arguments are passed or the input being used for the
argument is the wrong type it will raise the ArgumentError.  Using your own ArgumentErrors
are useful because it allows you to specify which kind of arguments you consider unacceptable.


**What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I've used the Ruby method rand before, so I didn't implement any new Ruby methods.  The rand method
returns a random number between 0 and the number passed as an argument, so I knew to add 1 to make sure when
the roll method was called it didn't return the number 0.


**What is a Ruby class?
A Ruby class a is like the blueprint for creating a new object.  It allows you to set the
variables/attributes and methods/behaviors for an object.  For example, you can create a Pet class that
stores information about the kind of animal, its name, age, weight, height, the kind of food it eats,
noises it makes, and how it moves.  When creating a new pet all the attributes and behaviors are available
to the new pet.


**Why would you use a Ruby class?
A Ruby class should be used to help organize code that can be grouped together and will be used to create
many objects that function in a similar way.  A Ruby class helps to create DRY code that can prevent
methods and variables from overlapping that do similar things.


**What is the difference between a local variable and an instance variable?
A local variable is defined in a method and can't be accessed by other methods because of its local scope.
An instance variable is defined with the at sign "@" preceding the variable name and is available across
methods within a particular Class.


**Where can an instance variable be used?
An instance variable can be used by other objects within the same Class.

=end