# Calculate the mode Pairing Challenge

# I worked on this challenge with Dana Breen.

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#Array of numbers or strings

# What is the output? (i.e. What should the code return?)
# return an array with the most frequent values
# if there is only 1 frequent value it returns a one element array
# if all values have the same frequency return the array
# What are the steps needed to solve the problem?
=begin
Initial Pseudocode/Solution
sort the array to put duplicates next to each other
pop element off array
iterate through all elements of the array
test against pop element for duplicates
if no duplicates are found we store non-duplicates in a stash
return array with stashed values if no duplicates
if duplicate is found keep value in array
call unique on array with duplicates
return unique array



#We realized after trying this that there was a more elegant way to
solve the problem using an enumerable method, so we re-worked our
pseudocode and solution multiple times to arrive at the below:

BEGIN
  SET max_frequency to zero
  FOR each item in list
    IF  list item count > max_frequency
      SET max_frequency = list item count
    ENDIF
  ENDFOR

  FOR each item in the list, keep the item if
    list item count = max_frequency
  ENDFOR
END
=end



# 1. Initial Solution
# def mode(array)
#   key_array.each do |key|
#     hash_value = my_array.count(key)
#     my_hash[key] = hash_value
#   end

#    if
#      my_hash.any? { |(key, value)| value > 1 }
#     #if any value is greater than 1, we know there are duplicates

#      has_dupe_hash = my_hash.keep_if {|key, value| value > 1}
#      p has_dupe_hash

#      test_value = has_dupe_hash.keys[0]

#      has_dupe_hash.each do |key, value|
#        has_dupe_hash.keep_if {|key, value| value > test_value}
#          #put key in an array
#          test_value = value

#        # else
#          #they are equal or it is less than
#        end

#         p has_dupe_hash

#      has_dupe_hash.each_pair do |key, value|

#     #we need to compare the values to find which is greatest.
#     #if there is just one frequent value, return that in an array
#     #if any of the values are equal, we have more than 1 frequent value and we return all the frequent values in an array
#     my_hash.each_value |value|
#       if value == 1
#       else

#    else
#      #if #no values are greater than 1, return values in an array--no duplicates
#      p my_hash.keys
#    end
# end
def mode(array)
  max_frequency = 0
  array.each do |item|
    if array.count(item) > max_frequency
      max_frequency = array.count(item)
    end
  end
  array.keep_if {|item| array.count(item)== max_frequency}
end


# 3. Refactored Solution
def mode(array)
  max_frequency = 0
  array.each {|item| max_frequency = array.count(item) if array.count(item) > max_frequency}
  array.keep_if {|item| array.count(item)== max_frequency}
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?



Were you more successful breaking this problem down into implementable pseudocode
than the last with a pair?



What issues/successes did you run into when translating your pseudocode to code?



What methods did you use to iterate through the content? Did you find any good ones
when you were refactoring? Were they difficult to implement?



=end











