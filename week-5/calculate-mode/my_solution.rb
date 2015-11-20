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
=begin
def mode(array)
  key_array.each do |key|
    hash_value = my_array.count(key)
    my_hash[key] = hash_value
  end

   if
     my_hash.any? { |(key, value)| value > 1 }
    #if any value is greater than 1, we know there are duplicates

     has_dupe_hash = my_hash.keep_if {|key, value| value > 1}
     p has_dupe_hash

     test_value = has_dupe_hash.keys[0]

     has_dupe_hash.each do |key, value|
       has_dupe_hash.keep_if {|key, value| value > test_value}
         #put key in an array
         test_value = value

       # else
         #they are equal or it is less than
       end

        p has_dupe_hash

     has_dupe_hash.each_pair do |key, value|

    #we need to compare the values to find which is greatest.
    #if there is just one frequent value, return that in an array
    #if any of the values are equal, we have more than 1 frequent value and we return all the frequent values in an array
    my_hash.each_value |value|
      if value == 1
      else

   else
     #if #no values are greater than 1, return values in an array--no duplicates
     p my_hash.keys
   end
end
=end
def mode(array)
  max_frequency = 0
  array.each do |item|
    if array.count(item) > max_frequency
      max_frequency = array.count(item)
    end
  end
  array.keep_if {|item| array.count(item) == max_frequency}
end


# 3. Refactored Solution
def mode(array)
  max_frequency = 0
  array.each {|item| max_frequency = array.count(item) if array.count(item) > max_frequency}
  array.keep_if {|item| array.count(item) == max_frequency}
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
At first we tried using an array, then an array and a hash, and finally ended up using just
using an array.  It took us a while because the control flow techniques and methods we were using
were not successful.  After researching Enumerable methods we were able to iterate through
the array to help us find the mode.


Were you more successful breaking this problem down into implementable pseudocode
than the last with a pair?
When breaking the problem down into pseudocode for this challenge we identified the I/O, then went
immediately into pseudo-coding the small steps.  When pseudo-coding with my last pair we discussed
the small steps we could take to solve that challenge after identifying the I/O before writing the
pseudocode for the small steps. I think pseudo-coding with my last pair was more successful because
we talked about which data structure we could use to solve the problem and the steps we could take
depending on the data structure we chose.  This allowed us to discuss various steps that could be
taken, clear up any initial confusion we may have had, and to help make sure we were on the same
before pseudo-coding the solution.


What issues/successes did you run into when translating your pseudocode to code?
We ran into several issues translating our pseudocode to code like which control flow
techniques, conditional statements, and iterative methods to use but I enjoyed the experience
and found it enlightening because we were able to discover what didn't work through the
errors we made.  I feel our successes came from the errors we made because we learned about
various methods, techniques, etc. that weren't successful for the problem we were trying to solve
but could be implemented for future challenges/problems.


What methods did you use to iterate through the content? Did you find any good ones
when you were refactoring? Were they difficult to implement?
We eventually used the .each method and the .keep_if method to iterate through the array
after exploring other methods like .include?, .has_value, and .max.  These two methods
were fairly easy to implement once we had chosen them to use for our solution.

The .each method helped us to find the value for max_frequency by:
 *iterating through each element in the array
 *counting the number of times the item was in the array
 *then updating the value for max_frequency if the item count was greater

The .keep_if method help us to only keep the elements in the array by
 *iterating through each element
 *comparing if the item count was equal to the max_frequency value
 *if the condition evaluated to false the item was deleted

=end











