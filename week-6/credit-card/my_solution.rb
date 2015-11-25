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
    @card_number = card_number.to_s.split("").map {|num| num.to_i}
    if @card_number.length != 16
      raise ArgumentError.new("Not a valid credit card! Please make sure all digits are entered.")
    end
  end

   def check_card
     number_array = @card_number

     #doubles each other digit
     number_array.each_index do |index|
       if index % 2 == 0
         number_array[index] *= 2
       end
     end

     #splits double-digit numbers into individual digits
     number_array.map! do |number|
       if number > 9
         number.to_s.split("").map! {|number| number.to_i}
       else
         number
       end
     end

     #sums all the digits
     sum = number_array.flatten.inject(:+)

     #Collapsed four lines into one to evaluate true or false
     sum % 10 == 0 ? true : false
   end


end

new_card = CreditCard.new(4563960122001999)
p new_card.check_card



new_card1 = CreditCard.new(4563960122001996)
p new_card1.check_card

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?


What new methods did you find to help you when you refactored?


What concepts or learnings were you able to solidify in this challenge?



=end