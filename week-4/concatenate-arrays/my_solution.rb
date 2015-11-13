# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

=begin Initial Solution

def array_concat(array_1, array_2)
  # Your code here
  if (array_1.length == 0) && (array_2.length == 0)
    return []
  else
    return array_1 + array_2
  end
end
=end

#Refactored Solution
def array_concat(array_1, array_2)
  # Your code here
  return array_1.concat(array_2)
end