# Numbers to Commas Solo Challenge

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive number/integer

# What is the output? (i.e. What should the code return?)
#a number returned as a string with a comma at every third digit from right to left

# What are the steps needed to solve the problem?
=begin
Initial Solution
DEF a method named separate_comma with one parameter
  SET an empty list to store the individual characters of a number
  IF the number is less than 1000
    return the number as a string
  ELSIF the number is less than 1000000
    change the number into a string
    split the characters in the string
    store it in the list variable
    insert a comma at the index value of -4
    return the characters in the list joined together
  ELSE
    change the number into a string
    split the characters in the string
    store it in the list variable
    insert a comma at the index value of -4
    insert a comma at the index value of -8
    return the characters in the list joined together
  END
END

Solution for Any Number
DEF a method named separate_comma with one parameter for a number
  SET num_string = the number as a string
  SET num_array = equal to a list of all the digits as strings

  IF num_string's length <= 3
     RETURN num_string
  ELSE
    FOR each index in the num_array
      IF the index % 4 == 0
        insert a comma in the num_array at the -index
      ENDIF
    ENDFOR
    SET the first index of num_array = to an empty string
    RETURN num_array as a joined string
  ENDIF
END
=end


# 1. Initial Solution
=begin
def separate_comma(num)
  num_array = []
  if  num < 1000
    return num.to_s
  elsif num < 1000000
    num_array = num.to_s.split("")
    num_array.insert(-4,",")
    return num_array.join
  else
    num_array = num.to_s.split("")
    num_array.insert(-4,",")
    num_array.insert(-8,",")
    return num_array.join
  end
end

p separate_comma(1234567891)

Solution For Any Number
def separate_comma(num)
  num_string = num.to_s
  num_array = num.to_s.chars

  if num_string.length <= 3
     num_string
  else
    num_array.each_index do |index|
      if index % 4 == 0
        num_array.insert(-index, ",")
      end
    end
    num_array[0] = ""
    num_array.join("")
  end
end
=end

# 2. Refactored Solution

#  Initial Refactored Solution
# def separate_comma(num)
#   num_array = num.to_s.chars
#   if  num < 1000
#     num.to_s
#   elsif num < 1000000
#     num_array.insert(-4,",").join
#   else
#     num_array.insert(-4,",").insert(-8,",").join
#   end
# end


#  Refactored Solution For Any Number
def separate_comma(num)
  num_array = num.to_s.chars

  num_array.each_index do |index|
    if index % 4 == 0
      num_array.insert(-index, ",")
    end
  end
  num_array[0] = ""
  num_array.join("")
end

p separate_comma(100)
p separate_comma(67234)
p separate_comma(759496070)
p separate_comma(1234567891234)

# 3. Reflection
=begin
**What was your process for breaking the problem down? What different approaches did you consider?
When breaking the problem down I considered the range of numbers that would not need any commas inserted,
numbers that would need only 1 comma inserted, and numbers that needed 2 commas inserted aftering looking
at the RSpec tests.  I knew commas needed to be inserted from right to left based on what was the desired
output.  Then I started typing my pseudocode using keywords in capitals, indenting code to show sections
dependent on lines above it, and tried to avoid using Ruby language specific words.


**Was your pseudocode effective in helping you build a successful initial solution?
My pseudocode was effective in helping me to build an initial solution that passed all the RSpec tests
and I moved onto refactoring my solution. However, when testing numbers not in the range of the
RSpec tests my initial & refactored solutions didn't work for any number.  So, I analyzed my code
and realized that a comma would be inserted at negative indices that were a multiple of four.
I used the Ruby Docs and found the .each_index to help me iterate through the num_array I had
created in the refactored solution and went back to pseudo-coding.


**What new Ruby method(s) did you use when refactoring your solution?
**Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.).
**Did it/they significantly change the way your code works? If so, how?
Some new Ruby methods I used when refactoring were .chars and .each_index.  The .chars method
will return an array, so I was able to chain methods and create the num_array variable
and delete unnesscary code in which I was repeating myself.  The .each_index allowed me
to iterate through each index in the num_array and insert commas at negative indices
that were a multiple of 4.  The .chars method was very easy to implement but I struggled
with the .each_index because I had to figure out were I needed to use "-" for the negative
index, which was in the insert method.  Using .chars didn't significantly change the way my
code works but it helped to ensure my code was DRY.  The .each_index significantly changed
my code because it allowed me to create a method the could take any number and return it
with commas in the correct indices.


**How did you initially iterate through the data structure?
For my initial solution I wasn't iterating through a data structure and focused on using if/else
control flow to insert commas into the number.  After, testing numbers greater than or equal to
1,000,000,000 I realized my solution didn't work for any number.  By using iteration the go
through each index in the array of number strings I was able to insert commas from right
to left.


**Do you feel your refactored solution is more readable than your initial solution? Why?
I think both of my refactored solutions are more readable than the initial solutions.
In the initial solutions I was repeating code and using unnecessary control flow
techniques to get the desired output.
=end