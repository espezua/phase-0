# PezDispenser Class from User Stories
=begin
I worked on this challenge [by myself, with: ].
I spent [#] hours on this challenge.


1. Review the following user stories:
As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
represent Pez so it's easy to start with a full Pez dispenser.
As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
so I can know how many are left.
As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
of the flavors coming up.


# Pseudocode

CREATE PezDispenser class
INIT the flavors variable
SET flavors as an attr_reader
B) Define method that counts length of the flavors array.
C) Define method that randomly selects an element from the flavors array and deletes it.
D) Define method that takes a user's Pez input as an argument and pushes it to the flavors array.
E) Define method that puts all elements of the flavors array.
=end


# Initial Solution

class PezDispenser
attr_reader :flavors
# your code here!
  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def see_all_pez
    @flavors
  end

  def get_pez
    @flavors.pop
  end

  def add_pez(flavor)
    @flavors << flavor
  end
end



# Refactored Solution
class PezDispenser
attr_reader :flavors
# your code here!
  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.count
  end

  def see_all_pez
    @flavors.join(", ")
  end

  def get_pez
    @flavors.shift
  end

  def add_pez(flavor)
    @flavors << flavor
  end
end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts super_mario.see_all_pez
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts super_mario.see_all_pez
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection