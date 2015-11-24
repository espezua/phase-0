# Build a simple guessing game

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# Pseudocode
=begin
# Input: an integer to be used for the answer
# Output:
 .guess: (return high if guess larger than the answer, return correct if guess and answer are equal, return low if guess is less than the answer)
 .solved?: returns true if the most recent number passed to .guess was correct and false if not correct

# Steps:
CLASS GuessingGame
  DEF initialize the answer variable to be used in other methods
    INIT an instance variable for answer
  END

  DEF a method to compare the guess to answer, takes one integer for the guess
    INIT an instance variable for guess
    IF the guess is greater than the answer
      return high
    ELSIF the guess is less than the answer
      return low
    ELSE
      return correct
    ENDIF
  END

  DEF a method to check if the most recent guess solved the game
    IF guess is equal to answer
      return true
    ELSE
      return false
    ENDIF
  END
END
=end
# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end

# game = GuessingGame.new(10)
# p game
# p game.guess(5)
# p game.solved?
# p game.guess(11)
# p game.solved?
# p game.guess(10)
# p game.solved?


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    @guess == @answer ? true : false
  end
end

game = GuessingGame.new(10)
p game
p game.guess(5)
p game.solved?
p game.guess(11)
p game.solved?
p game.guess(10)
p game.solved?



# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions)
of a real-world object?
Instance variables represent the characteristics(attributes) of a real-world object because
when real-world object is created their characteristics remain as long as the object exists.

This allows methods to represent the behaviors(actions) of a real-world object and have access
to its attributes to exhibit some behavior/action that a real-world object can do.


When should you use instance variables? What do they do for you?
You should use an instance variable when you want any method within a Class to have access
to it because the variable will keep its value between method calls.  This allows you to
create code that is DRY and can be easily modified to make changes.


Explain how to use flow control. Did you have any trouble using it in this challenge?
If so, what did you struggle with?
Flow control is used to create "branches" in your code that allow your program to take
on different actions depending on the various conditions that are met.  You use the keywords
like if/else, case/when, while/unless, etc. for creating branches in your code, create
conditional statements for each branch, and code that should be executed if the condition
is met.  Using flow control in this challenge was easy to implement and I learned how to
use the ternary operator "?"  in place of if/else to refactor the solved? method.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols, although similiar to strings, are immutable and unique.  Once a symbol is defined it is
stored in memory in the symbol table.  This allows Ruby to look a symbol up quickly when it is
used again, where as using a more complex object like a string takes longer to look up.  I think
this code requires symbols to be returned because Ruby processes symbols faster and it helps to
create a more efficient program.


=end