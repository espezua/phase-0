# Factorial

# I worked on this challenge with Matthew Oppenheimer.

# Your Solution Below
=begin Initial Solution
def factorial(number)
  num_array = []
  product = 1
  if (number==0)
    return 1
  end
  if number > 0
    while number > 0
      num_array.push(number)
      number -= 1
    end
    num_array.each do |x|
      product *= x
    end
    return product
  end
end
=end
=begin
def factorial(n)
  if n < 0
    return nil
  end

  result = 1
  while n > 0
    result = result * n

    n -= 1
  end

  return result
end
=end
#Refactored Solution

def factorial(n)
  if n == 0; return 1; end
  (1..n).reduce(:*)
end

