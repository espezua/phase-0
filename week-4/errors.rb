# Analyze the Errors

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.
# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    line 169
# 3. What is the type of error message?
#    syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#    between line 15: puts "What's there to hate about #{thing}?" & line 16: end
# 6. Why did the interpreter give you this error?
#    the interpreter expected the keyword 'end' the close the while loop

# --- error -------------------------------------------------------

south_park = "cartoon show"

# 1. What is the line number where the error occurs?
#    line 35
# 2. What is the type of error message?
#    NameError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
#    for the main:Object 'south_park'
# 5. Why did the interpreter give you this error?
#    the interpreter expected the variable 'south_park' to have a value, be initialized, or defined

# --- error -------------------------------------------------------

def cartman
  return "Cartman is a main character in the South Park series"
end
cartman()

# 1. What is the line number where the error occurs?
#    line 50
# 2. What is the type of error message?
#    NoNethodError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#    for the main:Object 'cartman'
# 5. Why did the interpreter give you this error?
#    the interpreter expected the method 'cartman' to be defined before it was called but it was never defined

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
#    line 68
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#     on line 72 the cartmans_phrase method is being called with an argument
# 5. Why did the interpreter give you this error?
#    the interpreter expected the cartmans_phrase method to be called without any arguments but it was passed 1 argument; methods must be called with the correct number of arguments

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("*&#*")

# 1. What is the line number where the error occurs?
#    line 87
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#    on line 91 when the cartman_says method is being called
# 5. Why did the interpreter give you this error?
#    the interpreter expected 1 argument for the cartman_says method when it was called but it was called without any arguments



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kenny')

# 1. What is the line number where the error occurs?
#    line 108
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#    on line 112 when the cartmans_lie method is being called
# 5. Why did the interpreter give you this error?
#    the interpreter expected 2 arguments to be passed when the cartmans_lie method was called but it was called with 1 argument

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#    line 127
# 2. What is the type of error message?
#    TypeError
# 3. What additional information does the interpreter provide about this type of error?
#    in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    line 127 when the number 5 is multiplied by a string
# 5. Why did the interpreter give you this error?
#    you can't multiply a number followed by a string in ruby, it must be 'string' * number

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
#    line 142
# 2. What is the type of error message?
#    ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#    in `/': divided by 0
# 4. Where is the error in the code?
#    on line 142 when the variable amount_of_kfc_keft is trying to store the value of 20/0
# 5. Why did the interpreter give you this error?
#    because you can't divide a number by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    line 158
# 2. What is the type of error message?
#    LoadError
# 3. What additional information does the interpreter provide about this type of error?
#    in `require_relative': cannot load such file -- /Users/jennaespezua/Desktop/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#    on line 158 when the interpreter is trying to load the file cartmans_essay.md
# 5. Why did the interpreter give you this error?
#    require_relative will load an external file, so the interpreter is looking for an external file titled "cartmans_essay.md" to load but it doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The errors weren't difficult to read but the color coded example for errors shown in the instructions was a different format
from the errors I received in the interpreter.


How did you figure out what the issue with the error was?
To figure out the issue with the error I looked at what line the error occurred on, the type of error, and the additional information.
Once I had that information I examined the code to figure out where the break down was occurring.  When looking at the code the
first line indicated isn't always where the error is occurring so it's important to pay attention to the additional information
and the type of error.


Were you able to determine why each error message happened based on the code?
Yes, I was able to determine why each error message occurred. By using the information from the error message I was able to fix the code
so it would pass.


When you encounter errors in your future code, what process will you follow to help you debug?
When debugging in the future I will examine the error message paying attention to what line it indicates the error occurs on,
the type of error, and the additional information to help me examine the code.  If I'm unsure about the error message I will
use resources such as google and stackoverflow to help me debug.

=end