# Pseudocode
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define method name with the parameters of the item & quantity
  # string of times separated using by splitting the string
  # add items the hash
  # set default quantity = 1
  # print the list to the console using the each method to iterate over the hash
# output: hash with items and quantities


# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add item name and quantity to the hash
# output: print the hash with the new item and quantity


# Method to remove an item from the list
# input:  item name
# steps:
  # check the hash for the key with the item name
  # remove the item name and quantity
# output: print the hash to check that the item was removed


# Method to update the quantity of an item
# input:  items with the new value for the quantity
# steps:
  # add the quantity to the item by
  # checking the hash for the item name
  # update the quantity
# output: print the hash to check if the item's quantity was updated


# Method to print a list and make it look pretty
# input: name of the hash
# steps:
  # iterate over the hash
  # for the item and quantity
  # separate each item and quantity on a new line with a colon
# output: print the hash to the console


#Initial Solution

# def create_a_list(name, quantity)
#   #list = name.split(", ")
#   list_items = {}
#   #list.each do |name|
#   list_items[name] = quantity
#   #end
#   p list_items
#   return list_items
# end

# def add_item(name, quantity, list)
#   list[name] = quantity
#   p list
#   return list
# end

# def remove_item(name, list)
#   list.delete(name)
#   p list
#   return list
# end

# def update_quantity(name, quantity, list)
#   list[name] += quantity
# end

# def print_list(list)
#   list.each do |name, quantity|
#     puts "#{name} : #{quantity}"
#   end
# end

#Refactored Solution

def create_a_list(name, quantity)
  list = {}
  list[name] = quantity
  return list
end


def add_item(name, quantity, list)
  list[name] = quantity
end



def remove_item(name, list)
  list.delete(name)
end


def update_quantity(name, quantity, list)
  list[name] = quantity
end

def print_list(list)
  list.each { |name, quantity| puts "#{name}: #{quantity}" }
end


#Testing Solution
grocery_list = create_a_list("lemonade", 2)
print_list(grocery_list)
puts

add_item("tomatoes", 3, grocery_list)
add_item("onions", 1, grocery_list)
add_item("ice cream", 4, grocery_list)
print_list(grocery_list)
puts

remove_item("lemonade", grocery_list)
print_list(grocery_list)
puts

update_quantity("ice cream", 1, grocery_list)
print_list(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?
This challenge helped me to practice breaking down the code into
small steps and indicating the I/O for methods.  However, I still find
it to be a struggle to think of words that are not language-specific and
I could work on using keywords like IF, WHILE, etc. to indicate the control flow.

What are the tradeoffs of using Arrays and Hashes for this challenge?
We decided to use a hash because it allowed us to assign key-value pairs with
the item's name and quantity. Also, it's easier to add, remove, and update
the data for the items and quantities by accessing keys in hash for a grocery list.
It would have been difficult to match the item name and quantity as well as
adding, updating, and removing items if we were to use an array because
of the way the elements would have been stored.

What does a method return?
A method returns the value of the last executed expression(implicit return)
unless the keyword return is used to indicate explicitly which value
should be returned. If "puts" or "print" are used in a method it will print
the output to the console and return nil. If "p" is used in a method it will
print the output to the console and return the value.

What kind of things can you pass into methods as arguments?
You can pass any kind of Ruby object into methods as arguments like:
 -arrays
 -strings
 -hashes
 -integers
 -floats
 -booleans

How can you pass information between methods?
You can pass information between methods by using global variables like the variable
grocery_list that was used to test our solution, return statements, and arguments.

What concepts were solidified in this challenge, and what concepts are still confusing?
I feel this challenge helped to solidify what a method returns and what you can
use as the argument(s) for methods.  Some concepts that I'm still confused by are writing
good, non-language-specific pseudocode and interpreting what the challenge is asking for
because there are many ways to solve this challenge.

=end
