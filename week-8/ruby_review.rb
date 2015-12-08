# I worked on this challenge by myself.
# This challenge took me 1 hour.

# Pseudocode
=begin
Input: a list of integers
Output: a list returned with multiples of 15 replaced with 'FizzBuzz', multiples of 5 replaced with 'Buzz', and multiples of 3 replaced with 'Fizz'
Steps:
DEF a method super_fizzbuzz that takes a list of integers
  FOR each integer in the list
    IF the integer is a multiple of 15
      replace the integer with 'FizzBuzz'
    ELSEIF the integer is a multiple of 5
      replace the integer with 'Buzz'
    ELSEIF the integer is a multiple of 3
      replace the integer with ''Fizz'
    ELSE
      integer
    ENDIF
  ENDFOR
END
=end

# Initial Solution

def super_fizzbuzz(array)
  array.map do |num|
    if num % 15 == 0
      num = 'FizzBuzz'
    elsif num % 5 == 0
      num = 'Buzz'
    elsif num % 3 == 0
      num = 'Fizz'
    else
      num
    end
  end
end
p super_fizzbuzz([30, 9, 20, 1])


# Refactored Solution
def super_fizzbuzz(array)
  array.map! {|num| num % 15 == 0 ? 'FizzBuzz' : num }
  array.map! {|num| num % 5 == 0 ? 'Buzz' : num }
  array.map! {|num| num % 3 == 0 ? 'Fizz' : num }
end
p super_fizzbuzz([30, 9, 20, 1])



# Reflection
=begin
Reflection
What concepts did you review or learn in this challenge?
In this challenge I reviewed:
  *pseudocoding
  *thinking about the logic of a problem
  *creating methods
  *using built-in methods
  *ternary operator
  *flow control
  *calling a method with an argument
  *using 'p' to print and return a method's output/return value
  *refactoring


What is still confusing to you about Ruby?
I think I have a good understanding of most of the basics in Ruby but I know
there is still a lot to learn.  What I've found confusing is making sure that
I'm using the correct syntax, understanding correctly what each part of the
code is doing, and when certain things are necessary or unnessary like return
or 'p' to get the output/return value when switching back and forth between
JavaScript and Ruby.


What are you going to study to get more prepared for Phase 1?
I plan to tackle every challenge in the Ruby module by the end of Phase 0.
Also, trying to solve some of the challenges using JavaScript could be helpful
in understanding & solidifying the similarities/differences in what can be
implemented in each language, how to implement/solve it in each language, and
the syntax for each language.

=end