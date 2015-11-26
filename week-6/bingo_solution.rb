# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 6 hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:
  DEF initialize method that takes a list of number lists for the board
    SET @bingo_board equal to board
    SET @letters equal to ["B", "I", "N", "G", "O"]
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  DEF call method to select a random letter and number
    SET random_letter variable equal to a random choice from @letters
    SET random_number variable equal to a random number from 1-100
    put to the console "Your number is "
    SET @combo to random_letter and random_number
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
  DEF show a column on the bingo board
    iterate through each row
    print the number in each row for the column
  END


# Display the board to the console (prettily)
  DEF show the bingo board
    print each of the bingo letters
    print 20 times '-'
    iterate through each row
    print each of the numbers in a row
  END
=end

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
  end

  def call
    random_letter = @letters.sample
    random_number = rand(1..100)
    puts "Your number is #{random_letter}#{random_number.to_s}"
    @combo = [random_letter, random_number]
  end

  def check
    if @combo[0] == "B"
      @bingo_board.each do |row|
        if @combo[1] == row[0]
          row[0] = 'X'
        end
      end
    elsif @combo[0] == "I"
      @bingo_board.each do |row|
        if @combo[1] == row[1]
          row[1] = 'X'
        end
      end
    elsif @combo[0] == "N"
      @bingo_board.each do |row|
        if @combo[1] == row[2]
          row[2] = 'X'
        end
      end
    elsif @combo[0] == "G"
      @bingo_board.each do |row|
        if @combo[1] == row[3]
          row[3] = 'X'
        end
      end
    elsif @combo[0] == "O"
      @bingo_board.each do |row|
        if @combo[1] == row[4]
          row[4] = 'X'
        end
      end
    end
  end

  def show_column(col)
    puts "Column #{col.to_s}"
    @bingo_board.each {|row| puts row[col-1] }
  end

  def display_board
    puts @letters.join('   ').center(20)
    puts '-' * 20
    @bingo_board.each {|row| puts row.join('  ').center(20) }
  end
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ['B', 'I', 'N', 'G', 'O']
  end

  def call
    random_letter = @letters.sample
    random_number = rand(1..100)
    puts "Your number is #{random_letter}#{random_number.to_s}"
    @combo = [random_letter, random_number]
  end

  def check  #.each method with if condition to one line
    if @combo[0] == 'B'
      @bingo_board.each { |row| row[0] = 'X' if @combo[1] == row[0] }
    elsif @combo[0] == 'I'
      @bingo_board.each { |row| row[1] = 'X' if @combo[1] == row[1] }
    elsif @combo[0] == 'N'
      @bingo_board.each { |row| row[2] = 'X' if @combo[1] == row[2] }
    elsif @combo[0] == 'G'
      @bingo_board.each { |row| row[3] = 'X' if @combo[1] == row[3] }
    elsif @combo[0] == 'O'
      @bingo_board.each { |row| row[4] = 'X' if @combo[1] == row[4] }
    end
  end

  def show_column(col) #prints column letter instead of number & numbers aligned
    col_num = col - 1
    col_letter = @letters[col_num]
    puts "Column #{col_letter}"
    @bingo_board.each {|row| puts row[col_num].to_s.center(8) }
  end

  def display_board #add lines to define top and bottom of board
    line = '-' * 25
    puts line
    puts @letters.join('    ').center(25)
    puts line
    @bingo_board.each {|row| puts row.join('   ').center(25) }
    puts line
  end
end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check

new_game.show_column(4)
new_game.display_board

#Reflection
=begin
*How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I feel I'm getting better at breaking problems into small steps but it's still a struggle.
I reviewed my pseudocode to ensure I had included all the steps I thought were necessary and
sometimes overanalyzed the chocies I had made.  I feel my pseudocoding style is detailed
and clean because I capitalize keywords, indent code dependent on lines above it, try to
be language agnostic, and it reads like English.


*What are the benefits of using a class for this challenge?
The benefits of using a class are when you instantiate a new object it gives you access to
all the methods created for that class and the numbers that are replaced with 'X' retain that
state with that instantiated object.


*How can you access coordinates in a nested array?
To access coordinates in a nested array you need to pay attention to the structure and use
syntax like array[index][index] for the indices.  The first index will access that element
in the array and the second index will access that element within the nested array.
For instance:
my_array = [[1,2,3], [4,5,6], [7,8,9]]
To access the number 7 I would use my_array[2][0]


*What methods did you use to access and modify the array?
I used the #each method to access and modify the array by setting the variables using
the syntax array[index].


*Give an example of a new method you learned while reviewing the Ruby docs.
*Based on what you see in the docs, what purpose does it serve, and how is it called?
I learned about the Array#transpose method that works on equally sized subarrays
and returns a new array.  The method changes the rows and columns of the array
but it's not destructive.
For instance,
array = [[2,4,6], [3,5,7]]
array.transpose returns [[2, 3], [4, 5], [6, 7]]


*How did you determine what should be an instance variable versus a local variable?
I determined what would be an instance variable based on whether I would need other
methods to have access to its value.  For example, I made an instance variable for the
letters  ['B', 'I', 'N', 'G', 'O']. I used the variable to select a random letter in the
call method, print the a letter with the column numbers for the show_column method, and
print the letters for the title of the bingo board for the display_board method.  I
determined what would be a local variable if I only needed that value for a specific
method. For example, I created the local variable random_letter to store the value of
a random sample from the @letters variable. Then I created the local variable random_number
to store the value of a random number from 1-100.  To give the check method access to
these values I stored them in the @combo instance variable.


*What do you feel is most improved in your refactored solution?
I feel the readability of my refactored solution is the most improved because it's easier
to understand the logic of the check method.  I changed the code to be evaulated after each
if/elsif condition to one line.  By doing this, you can quickly see what code will be evaulated
based on the letter from the call method.  This conveniently shows which letter corresponds
to each row's index and that the number at the index will be replaced with 'X' if the number
from the call method is equal to the number at that row's index.


=end