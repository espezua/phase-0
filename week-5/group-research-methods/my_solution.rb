# Research Methods

# I spent 3 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1
def my_array_finding_method(source, thing_to_find)
  source.keep_if {|item| item.to_s.include? thing_to_find}
end

def my_array_finding_method(source, thing_to_find)
  source.select { |item| item.to_s.include? thing_to_find}
end

def my_array_finding_method(source, thing_to_find)
  source.select! { |item| item.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
  source.keep_if {|key, value| value == thing_to_find}
  source.keys
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|key, value| value == thing_to_find}.keys
end

def my_hash_finding_method(source, thing_to_find)
  source.select! {|key, value| value == thing_to_find}
  source.keys
end

# Identify and describe the Ruby method(s) you implemented.
# 1) .to_s - returns a string representing the object
# 2) .include?(array) - returns true if the given object is present in the array
# 3) .keys - returns an array populated with the keys from the hash
# 4) .keep_if(array) - deletes every element from the array for
#     which a code block evaluates to false.
# 5) .keep_if(hash) - deletes every key-value pair from a hash
#     for which a code block evaluates to false
# 6) .select(array) - returns a new array containing all the elements of the
#     array for which the given block evaluates to true (non-destructive)
# 7) .select(hash) - returns a new hash consisting of key-value pairs for which
#     the block returns true (non-destructive)
# 8) .select!(array) - equivalent Array#keep_if (destructive method)
# 9) .select!(hash) - equivalent to Hash#keep_if (destructive method)



# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! { |x|
    if x.is_a?(Integer)
      x =+ thing_to_modify
    end
  x
  }
  #REFACTORED SOLUTION
  #source.map! { |x| x.is_a?(Integer) ? x += thing_to_modify : x }

end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify}

end

# Identify and describe the Ruby method(s) you implemented.
# I used .map! for the array to change each element in the array only if the element is an integer.
# I used .each to iterate over the hash and changed the values.
# .map pretty much allows you to change each element with whatever code block you specify.
# We should all know what .each is and .map is basically the same except each returns the original array.
# Ruby docs is definitely intimidating at first but if you take the time to read through it
# and look at the examples it becomes easier to understand.



# Person 3
def my_array_sorting_method(source)
    num_array = source.select { |element| element.is_a? Integer}.sort
    string_array = source.select { |element| element.is_a? String}.sort
    num_array + string_array
end



def my_hash_sorting_method(source)
    source.sort_by {|keys, values| values}
end

# Identify and describe the Ruby method(s) you implemented.
#.select
#.is_a?
#.sort_by



# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |strings|
    if strings.to_s.include?(thing_to_delete)
      source.delete(strings)
    end
  end
  source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.each_key do |key|
    if key.to_s.include?(thing_to_delete)
      source.delete(key)
    end
  end
  source
end

# Identify and describe the Ruby method(s) you implemented:
# each and each_key - iterate through each value in the array or each key in the hash.
# to_s - changes the data type to a string
# include? - returns true if it includes that value
# delete - deletes the entry



# Person 5
def my_array_splitting_method(source)
  return source.partition {|i| i.is_a? Integer}
end

def my_hash_splitting_method(source, age)
  return source.partition {|key, value| value <= age}
end

# Identify and describe the Ruby method(s) you implemented.
# The Ruby method I implemented was the partition method.
# It returns two arrays, the first one where all the elements
# evaluate to true, and the second containing the rest of the
# elements.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# Person 1
# Array#keep_if & Hash#keep_if are aliases for Array#select! & Hash#select!
# These methods remove/delete elements in the array/hash if the block evaluates false
#
#  Array#keep_if & Array#select!
#  use .keep_if on an array & pass the method a block
#  inside the block use {|element| some condition}
#  Ex. {|item| item.to_s.include? thing_to_find}
#  it will pass every element in the array to the code block
#  Ex. every element is changed to a string, then .include? checks if it's in thing_to_find
#  every element that evaluates to false is deleted
#  Ex. the element is deleted if it's not in thing_to_find
#  returns an array of elements that were not deleted


#  Hash#keep_if & Hash#select!
#  use .keep_if on an hash & pass the method a block
#  inside the block use {|key, value| some condition}
#  Ex. {|key, value| value == thing_to_find}
#  it will pass every key-value pair to the code block
#  Ex. each value in a key-value is check if it's equal to thing_to_find
#  every key-value pair that evaluates to false is deleted
#  Ex. the key-value pair is deleted if it's not equal to thing_to_find
#  returns a hash of key-value pairs that were not deleted
#  Ex. source.keys used to return only the keys in the hash's key-values pairs


#  Array#select
#  use .select on an array & pass the method a block
#  inside the block use {|element| some condition}
#  Ex. {|item| item.to_s.include? thing_to_find}
#  it will pass every element in the array to the code block
#  Ex. every element is changed to a string, then .include? checks if it's in thing_to_find
#  every element that evaluates to true is kept
#  Ex. the element is kept if it's in thing_to_find
#  returns a new array of elements


#  Hash#select
#  use .select on hash & pass the method a block
#  inside the block use {|key,value| some condition}
#  Ex. {|key, value| value == thing_to_find}
#  it will pass every key-value pair to the code block
#  Ex. each value in a key-value is check if it's equal to thing_to_find
#  key-value pair that evaluates to true is kept
#  Ex. the key-value pair is kept if it's equal to thing_to_find
#  returns a hash of key-value pairs that were kept
#  Ex. {|key, value| value == thing_to_find}.keys
#  Unlike Hash#select!, .keys must be chained to the end of the block
#  or it will not return the new hash with keys that evaluated to true


# Person 2
# Identify and describe the Ruby method(s) you implemented.
# I used .map! for the array to change each element in the array only if the element is an integer.
# I used .each to iterate over the hash and changed the values.
# .map pretty much allows you to change each element with whatever code block you specify.
# We should all know what .each is and .map is basically the same except each returns the original array.
# Ruby docs is definitely intimidating at first but if you take the time to read through it
# and look at the examples it becomes easier to understand.


# Person 3
# 1. for select method, you use .select on a string. then pass to .select method
#    a block contains the criteria. Then the block goes through each element in
#    the string to see if each element satifies the criteria.
# 2. for .is_a? method, you pass along a class for .is_a? to test if its true or false.
#    for example, 12.is_a?(Integer) will return true
# 3. for .sort_by method, you pass along a criteria to the hash


# Person 4 - The methods that I implemented are fairly simple and straight to the point.
# 1. The each method creates a block for each value in the array.
# 2. The each_key method does the same thing but only using the keys in a hash.
# 3. The to_s method changes the type to a string which allows me to call the include? method.
# 4. The include? method checks if the (thing_to_delete) is in the string and returns true/false.
# 5. The delete method just deletes the hash or array entry.


# Person 5
# The partition method is an enumerable method. Basically,
# it's a method that uses .each to go through each element.
# For partition, you want to set up the block so that what
# want in the first nested array evaluates to true, while
# everything else will automatically go into the second array.

