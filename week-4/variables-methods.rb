#Full Name Greeting Challenge

puts "Hello, what is your first name?"
first_name = gets.chomp
puts "Thanks! What's your middle name?"
middle_name = gets.chomp
puts "Great. What's your last name?"
last_name = gets.chomp

puts "Nice to meet you " + first_name + " " + middle_name + " " + last_name + "!"


#Bigger, Better Favorite Number Challenge
puts "Hi! What is your favorite number?"
favorite_num = gets.chomp
better_num = (favorite_num.to_i + 1).to_s
puts "Have you ever thought of #{better_num}?  It could be your new favorite number that's bigger and better!"

=begin
How do you define a local variable?


How do you define a method?


What is the difference between a local variable and a method?


How do you run a ruby program from the command line?


How do you run an RSpec file from the command line?


What was confusing about this material? What made sense?

=end
