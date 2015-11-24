# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
# number_array.collect! do |element|
#   if element.kind_of?(Array)
#     element.collect! {|inner| inner += 5}
#   else
#     element += 5
#   end
# end
# p number_array
#Refactored Version that uses recursion could traverse
#an infinite amount of nested arrays
def add_5(array)
  array.collect! do |element|
    if element.is_a?(Array)
      add_5(element)
    else
      element += 5
    end
  end
  return array
end
p add_5(number_array)
# Bonus:
#Initial Solution
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names.collect! do |element|
#   if element.is_a?(Array) #this is a new method that checks the class of an object
#     element.collect! do |element|
#       if element.is_a?(Array)
#         element.collect! do |element|
#           element += "ly"
#         end
#       else
#         element += "ly"
#       end
#     end
#   else
#     element += "ly"
#   end
# end
# p startup_names
#Refactored Version that uses recursion could traverse
#an infinite amount of nested arrays
def add_ly(array)
  array.collect! do |element|
    if element.is_a?(Array)
      add_ly(element)
    else
      element += "ly"
    end
  end
  return array
end
p add_ly(startup_names)
#Reflection
=begin
What are some general rules you can apply to nested arrays?
When accessing nested arrays, you have to have to pay attention to the dimensions of
the data structure.  You may get caught in arrayception if you are not careful. Also,
it's important to be aware of the kind of data structures that are nested within each
other like arrays within an array, hashes within arrays within an array, or arrays within
hashes.

What are some ways you can iterate over nested arrays?
When you have a nested array you can iterate over the array like a flat array but if
you want to access elements within the nested arrays you'll need to iterate over the
first array, then second array, and so on to access the elements you need or want to
modify. For example, if you want to add/modify every element in the original array you
will need to iterate through the next array/nested arrays to access & modify the
elements in those arrays.


Did you find any good new methods to implement or did you re-use one you were
already familiar with? What was it and why did you decide that was a good option?
Mostly we re-used methods we were already familiar with like collect! to modify
the elements with the nested arrays.  We used kind_of? and is_a? that were new
for me, but essentially do the same thing by checking whether the object is of
a particular class and returns true/false.  Also, we used recursion that was new
for me and very useful in creating a method that could work with any amount of
nested arrays.

=end