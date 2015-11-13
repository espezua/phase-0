# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Matthew Oppenheimer.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An list of number
# Output: The sum of all number in the list
# Steps to solve the problem.
# create a variable equal to 0
# add each number in the list to the variable
# return the sum

# 1. total initial solution
=begin

def total(list)
  sum = 0
  list.each do |x|
    sum += x
  end
  return sum
end
=end

# 3. total refactored solution

def total(list)
  return (list).reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Take a list of words
# Output: Return the list of words as a sentence
# Steps to solve the problem.
# Combine the list of words to create a sentence
# Capitalize the first word in the sentence
# Add a period to the end of the sentence
# 5. sentence_maker initial solution
=begin
def sentence_maker(words)
  sentence = words * " "
  sentence.capitalize + "."
end
=end

# 6. sentence_maker refactored solution
def sentence_maker(words)
  words.join(" ").capitalize + "."
end
