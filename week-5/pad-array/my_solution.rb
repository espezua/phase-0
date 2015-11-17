# Pad an Array

# I worked on this challenge Mira Scarvalone

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# array: given group of values
# min_size: minimum amount of values in list
# value = nil: if length of array is less than minimum, add value to array until it reaches minimum

# What is the output? (i.e. What should the code return?)
# pad! returns a new list, which will either be the input array (if it's longer than input min_size),
# or the input array with input value added until it reaches min_size

# pad print out the same output as above, but does not permanently modify any of the inputs

# What are the steps needed to solve the problem?

# 2 scenarios:
# 1. length of array < min_size
# add value as new element of array
# repeat this process until length = min_size
# 2. length >= min_size
# return array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size == 0
    return array
  elsif array.length >= min_size
    return array
  else
    while array.length < min_size
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup

  if min_size == 0
    return new_array
  elsif new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    return new_array
  end
end


# 3. Refactored Solution

#    Refactored Solution #1
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup

  if new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    return new_array
  end
end

#    Refactored Solution #2
def pad!(array, min_size, value = nil) #destructive
  array << value until array.length >= min_size
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value until new_array.length >= min_size
  return new_array
end

#    Refactored Solution #3
def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length, min_size-array.length)
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array.fill(value, array.length, min_size-array.length)
end


# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
Yes, we were able to break the problem down into small steps but our pseudocode
is a little vague because pseudocoding is fairly new for the both us and
we were still unsure about how to structure it without being language-specific.


Once you had written your pseudocode, were you able to easily translate it into code?
What difficulties and successes did you have?
We were able to translate it into code because knew we needed to add the value passed to
the method to the end of the array repeatedly until the length of the array reached
the minimum size.  However, it took a few tries to determine how we would accomplish
that(the order of control flow).


Was your initial solution successful at passing the tests? If so, why do you think that is?
If not, what were the errors you encountered and what did you do to resolve them?
Initially our solution wasn't passing the tests because we hadn't created a variable within
the non-destructive method to store the new array that didn't have the same object_id.  After
some research we found the dup method for objects would duplicate the array without copying
the reference number.


When you refactored, did you find any existing methods in Ruby to clean up your code?
We googled for a while and found a few methods like fill that we thought could work.  Reading
the Ruby Docs was difficult because the explanation and examples aren't always helpful.
At the end of the session we refactored the solution by changing the control flow.
Later on, I continued to try out the fill method and attempted to understand the different
forms shown. Eventually I discovered I needed to use the form fill(obj, start [, length]) → ary,
which means:
  obj: any object to fill the array
  start: the starting point for the object to be added
  length: how many times to fill the array with the object


How readable is your solution? Did you and your pair choose descriptive variable names?
I think our solutions are readable because the control flow is fairly easy to follow and
the fill method seems to be implicit.  We didn't need to create many new variable names
and I think the variable name new_array is pretty explicit.


What is the difference between destructive and non-destructive methods in your own words?
Destructive methods permanently change the object, in that the original object will be overwritten
by the method and it will keep the same object ID/reference number.
Non-destructive methods create a new object, in which the original object remains unchanged
and the method returns the new, revised object with a different object ID/reference number.

=end