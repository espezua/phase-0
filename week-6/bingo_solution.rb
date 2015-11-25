# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  DEF call method to select a random letter and number
    SET @letters instance variable for ["B", "I", "N", "G", "O"]
    SET @random_letter instance variable equal to a random choice from @letters
    SET @random_number instance variable equal to a random number from 1-100
    put to the console "Your number is "
    RETURN the @random_letter and @random_number
  END

# Check the called column for the number called.
  DEF check each row using the return value from call
    IF the letter from call is equal to "B", check the 1st element in each row
    ELSIF the letter from call is equal to "I", check the 2nd element in each row
    ELSIF the letter from call is equal to "N", check the 3rd element in each row
    ELSIF the letter from call is equal to "G", check the 4th element in each row
    ELSIF the letter from call is equal to "O", check the 5th element in each row


# If the number is in the column, replace with an 'X'
  #iterate through each row in the bingo board
  #check if the number from call is equal to the element in the "column"
  #replace the number with an "X" if equal

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here
=end

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters = ["B", "I", "N", "G", "O"]
    @random_letter = @letters.sample
    @random_number = rand(1..100)
    puts "Your number is #{@random_letter}#{@random_number.to_s}"
    return [@random_letter, @random_number]
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoBoard.new(board)
p new_game.call

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?


What are the benefits of using a class for this challenge?


How can you access coordinates in a nested array?


What methods did you use to access and modify the array?


Give an example of a new method you learned while reviewing the Ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is it called?


How did you determine what should be an instance variable versus a local variable?


What do you feel is most improved in your refactored solution?

=end