# Your Names
# 1) Jenna Espezua
# 2) Mira Scarvalone

# We spent 2 hours on this challenge.

# Bakery Serving Size portion calculator.
#Initial Code
=begin
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    p library[food]
    p library[item_to_make]
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0] #assume each key appears once in the hash
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
# p serving_size_calc("cake", 5)
=end

# Refactored Solution
def serving_size_calc(item_to_make, order_quantity)
  dessert_items = {"cookie" => 1, "cake" =>  5, "pie" => 7, "chocolate" => 2, "tart" => 4}

  if dessert_items[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  servings = order_quantity/dessert_items[item_to_make]

  leftover_quantity = order_quantity % dessert_items[item_to_make]
  alternate_items = []

  if leftover_quantity == 0
    return "Calculations complete: Make #{servings} of #{item_to_make}"
  else

    dessert_items.each do |key, value|

      if value <= leftover_quantity
        alternate_items << key
      end
    end

    return "Calculations complete: Make #{servings} of #{item_to_make}, you have #{leftover_quantity} leftover ingredients. Suggested baking items: #{alternate_items.join(", ")} "

  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("tart", 8)
p serving_size_calc("chocolate", 6)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned that it is important to use variable names that are clear about
what value the variable is storing.  For example, instead of using library
for the hash we changed the variable name to dessert_items.  As well, using
control flow techniques in way that's easy to follow helps you to understand
what the method does when it is called with arguments.

Did you learn any new methods? What did you learn about them?
I didn't learn about any new methods but I learned about how to use nil for
the first conditional statement from my partner.   She explained that if the
argument sent in for item_to_make wasn't in the dessert_items hash then it would
evaluate to nil.  This allowed us to refactor the code by not using the error_counter
and just raising an  ArgumentError if the item_to_make wasn't in the dessert_items hash.

What did you learn about accessing data in hashes?
This challenge helped me to practice accessing data in hashes using iteration
and accessing data without iteration by using the syntax hash[key].

What concepts were solidified when working through this challenge?
Some concepts that were solidified in this challenge were raising an ArgumentError,
accessing keys and values in a hash with & without iteration, and ways to
refactor the code to make it more readable.

=end
