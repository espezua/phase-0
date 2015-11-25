# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

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
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?


What are the benefits of using a class for this challenge?


How can you access coordinates in a nested array?


What methods did you use to access and modify the array?


Give an example of a new method you learned while reviewing the Ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is it called?


How did you determine what should be an instance variable versus a local variable?


What do you feel is most improved in your refactored solution?

=end