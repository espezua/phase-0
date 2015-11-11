#Full Name Greeting Challenge

puts "Hello, what is your first name?"
first_name = gets.chomp
puts "Thanks! What's your middle name?"
middle_name = gets.chomp
puts "Great. What's your last name?"
last_name = gets.chomp

puts "Nice to meet you #{first_name} #{middle_name} #{last_name}!"


#Bigger, Better Favorite Number Challenge
puts "Hi! What is your favorite number?"
favorite_num = gets.chomp
better_num = (favorite_num.to_i + 1).to_s
puts "Have you ever thought of #{better_num}?  It could be your new favorite number that's bigger and better!"


=begin
Exercises
https://github.com/espezua/phase-0/blob/master/week-4/define-method/my_solution.rb
https://github.com/espezua/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/espezua/phase-0/blob/master/week-4/math/my_solution.rb


How do you define a local variable?
To define a local variable you assign a value to a variable name and use the syntax:
local_variable_name = "some object"

How do you define a method?
To define a method you use the syntax:
def method_name(parameters)
  #method code here
end

What is the difference between a local variable and a method?
A local variable stores a single value that can only be accessed inside the scope or block of
code where the variable was created.  A method is a block of code that can do something,
contain local variables, and be executed by calling the method.

How do you run a ruby program from the command line?
To run a ruby program from the command line you should type 'ruby <file-name.rb>'.

How do you run an RSpec file from the command line?
To run an RSpec file from the command line you should type 'rspec <spec-file-name.rb>'.

What was confusing about this material? What made sense?
The material was clear and easy to understand.  Typing the commands for running a ruby program and a spec file,
assigning variables, defining methods, and using the git workflow was good practice to help build up to more
difficult challenges.  Also, typing the solutions in seperate files from the spec files made sense because you're
testing the validity of your methods against the tests created.
=end
