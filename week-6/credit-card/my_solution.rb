# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Joe Plonsker.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: A 16-digit number
# Output: A boolean value of true or false.
# Steps:
# First will have an initialize method that will take the number as an argument.
# Next, check to see if the credit card number is 16 digits. If not, raise an argument error.
#If yes, continue through the class.
#Next the number will be broken into individual parts and stored into a list.
#If the index is even, double the number stored at that index.
#Iterate through the list. If a number is greater than 9, split the number into individual digits.
#If the sum of the digits is a multiple of ten then you have a valid credit card number.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.split("")
    if @card_number.length != 16
      raise ArgumentError.new("Not a valid credit card! Please make sure all digits are entered.")
    end
  end

   def check_card
     @number_array = @card_number.map {|x| x.to_i}
     @number_array.each_index do |index|
       if index % 2 == 0
         @number_array[index] *= 2
       end
     end
     @number_array.map! do |number|
       if number > 9
         number.to_s.split("").map! {|number| number.to_i}
       else
         number
       end
     end
     sum = @number_array.flatten.inject(:+)

     if sum % 10 == 0
       true
     else
       false
     end
   end

end


# Refactored Solution

class CreditCard
  def initialize(card_number)
    #creates an array of all the digits in the card number
    @card_number = card_number.to_s.split("").map {|num| num.to_i}
    if @card_number.length != 16
      raise ArgumentError.new("Not a valid credit card! Please make sure all digits are entered.")
    end
  end

  def check_card

    #doubles every other digit
    @card_number.each_index do |index|
      if index % 2 == 0
        @card_number[index] *= 2
      end
    end

    #splits double-digit numbers into individual digits
    @card_number.map! do |number|
      if number > 9
        number.to_s.split("").map! {|number| number.to_i}
      else
        number
      end
    end

    #finds the sum of all the digits
    sum = @card_number.flatten.inject(:+)

    #Collapsed four lines into one to evaluate true or false
    sum % 10 == 0 ? true : false
  end

end

=begin Driver Code
new_card = CreditCard.new(4563960122001999)
p new_card.check_card()

new_card1 = CreditCard.new(4563960122001996)
p new_card1.check_card()

new_card2 = CreditCard.new(456396012200199)
p new_card2.check_card()

new_card3 = CreditCard.new(45639601220019967)
p new_card3.check_card()
=end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part of this challenge for my pair and I was refactoring.
Initially, we tried to break the check method into individual methods but
we struggled with getting the new individual methods to work with each
other properly.  When ended up choosing to refactor our initial solution
for readability and DRYness including comments to make it clear what
each part of the check method was doing.


What new methods did you find to help you when you refactored?
There weren't any new methods we used during refactoring but
I was able to share with my partner that the #reduce and #inject methods
in our initial solution are aliases and do the same thing.


What concepts or learnings were you able to solidify in this challenge?
I think a concept that I was able to solidfy was using methods on objects/classes
in the correct order.  At first we were chaining some methods in the wrong order
but this helped me pay attention to an object's class and what methods are
available for specific classes.  Also, I think I was able to improve in
making sure the steps within a method build upon one another using the
results from the previous steps.


=end