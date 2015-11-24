#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode
=begin
# Input:
 NameData: takes a string for the name
 Greetings: uses the input from the class NameData
# Output:
 NameData: returns the value of for the name variable
 Greetings: returns a greeting with the value for name from the class NameData
# Steps:
CLASS NameData
  use attr_reader to allow the name variable to be read outside the class
  DEF initialize takes one parameter for a name
    INIT an instance variable name
  END
END

CLASS Greetings
  DEF initialize
    INIT an instance variable that uses the name from Class NameData
  END

  DEF hello
    prints "Hello (name from initialize method)! How wonderful to see you today."
  END
END
=end
class NameData
  attr_reader :name
  def initialize(name)
    @name = "Jenna Espezua"
  end
end


class Greetings
  def initialize
    @person = NameData.new(@name)
  end

  def hello
    puts "Hello #{@person.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


=begin
Release_1.rb
What are these methods doing?
the Class creates a profile by:
*.initialze: initializes the instance variables as follows:
  *age = 27
  *name = Kim
  *occupation = Cartographer
*.print_info: prints the information for each instance variable
*.what_is_age: returns the value stored in the age instance variable
*.change_my_age: updates the age instance variable with the new value passed to the method
*.what_is_name: returns the value stored in the name instance variable
*.change_my_name: updates the name instance variable with new value passed to the method
*.what_is_occupation: returns the value stored in the occupation instance variable
*.change_my_occupation: updates the occupation instance variable with new value passed to the method


How are they modifying or returning the value of instance variables?
The .what_is_age, .what_is_name, and .what_is_occupation methods return the value of the
instance variables when they are called with the new instance of the profile class.

The methods .change_my_name, .change_my_age, and .change_my_occupation modify the instance
variables by reassigning them to the value that is used when these methods are called with the new instance of the profile class.


Release_2.rb
What changed between the last release and this release?
This release used "attr_reader :age" to allow the age instance variable to return its
value when called outside of the class, but does not change the value. The .what_is_age
was deleted/commented out.

What was replaced?
attr_reader :age replaced the what_is_age method

Is this code simpler than the last?
Yes


Release_3.rb
What changed between the last release and this release?
This release added "attr_writer :age" to allow the value of the age instance variable to be
changed outside of the class. The .change_my_age was deleted/commented out.

What was replaced?
attr_writer :age replaced the change_my_age method

Is this code simpler than the last?
Yes


Release_4.rb
What changed between the last release and this release?
This release used "attr_accessor :age" to allow the value of the age instance variable to be
returned and changed outside of the class.

What was replaced?
"attr_accessor :age" replaced "attr_reader :age" & "attr_writer :age" and
the need for the .what_is_age and .change_my_name methods

Is this code simpler than the last?
Yes

Release_5.rb
Refactored code to make the best use of the attr_attribute methods and delete any code
that wasn't needed anymore
class Profile
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
end

Release 6: Reflect
What is a reader method?
A reader method returns the value/state of an instance variable outside of that
variable's class. You cannot change it, only read the information.


What is a writer method?
A writer method allows you to change the value of an instance variable outside of the
variable's class.  You cannot read the information, only change the information.


What do the attr methods do for you?
It allows you to get instance variables and set instance variables easily, which can
help when trying to access/pass certain variables across methods and/or classes.


Should you always use an accessor to cover your bases? Why or why not?
No, you shouldn't always use an accessor because it can compromise your data's security
and lead to a lot of issues making debugging difficult.  Use attr_reader when you only
need to read data and use attr_writer when you only need to change data.  Use the
attr_accessor method sparingly.


What is confusing to you about these methods?
The what these methods are and how to use them were pretty straightforward, so I didn't
find anything confusing.

=end