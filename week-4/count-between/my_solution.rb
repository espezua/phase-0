# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

=begin Initial Solution
def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  sum = 0
  if (list_of_integers.length == 0) || (upper_bound < lower_bound)
    return 0
  elsif (lower_bound == upper_bound)
    return list_of_integers.length
  else
    list_of_integers.each do |x|
      if (x >= lower_bound) && (x <= upper_bound)
        sum += 1
      end
    end
    return sum
  end
end

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  sum = 0
  list_of_integers.each { |x| sum+=1 if (x >= lower_bound) && (x <= upper_bound) }
  return sum
end
=end

#Refactored Solution

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  return list_of_integers.count { |x| (x >= lower_bound) && (x <= upper_bound) }
end