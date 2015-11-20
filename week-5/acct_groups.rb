#Pseudocode
=begin
Input = list of names
Output = list of groups with the names of 4 or 5 people, possibly one group of 3
Initial Solution
DEFINE a method that takes a list
  sort the list
  SET groups = to an empty list
  IF list's length % 5 == 0
    print groups = lists of 5 names from the list
  ELSIF list's length % 5 == 0 AND list's length % 4 == 0
    print groups = lists of 4 names from the list
  ELSIF  list's length % 4 == 0
    print groups = lists of 4 names from the list
  ELSE
    print groups = lists of 4 names from the list
  END
END

Working Solution Pseudocode
DEFINE a method that takes a list
  sort the list
  SET groups = to an empty list

  IF list's length % 5 != 1 AND list's length % 5 != 2
    print groups = lists of 5 names from the list
  else
    print groups = lists of 4 names from the list
  end
END

Print Groups Method
DEF a method print_groups with one parameter that will take a list of lists of names
  SET a counter to 1
  FOR each of the lists in list
    PRINT one of the lists with the Group# before the names
    use the counter for the group number
    INCREMENT the counter
  ENDFOR
END
=end


# Initial Solution
# def acct_groups(array)
#   array.shuffle!
#   groups = []
#   if array.length % 5 == 0
#     print groups = array.each_slice(5).to_a
#   elsif array.length % 5 == 0 && array.length % 4 == 0
#     print groups = array.each_slice(4).to_a
#   elsif  array.length % 4 == 0
#     print groups = array.each_slice(4).to_a
#   else
#     print groups = array.each_slice(4).to_a
#   end
# end

#Initial Method to Print Groups
# def print_groups(groups)
#   counter = 1
#   groups.each do |group|
#     p "Group" + counter.to_s + ": #{group}"
#     counter = counter.to_i + 1
#   end
# end



# Working Initial Solution
def acct_groups(array)
  array.shuffle!
  groups = []

  if array.length % 5 != 1 && array.length % 5 != 2
    print groups = array.each_slice(5).to_a
  else
    print groups = array.each_slice(4).to_a
  end
end



#Refactored Solution
def acct_groups(array)
  array.shuffle!
  groups = []

  if array.length % 5 != 1 && array.length % 5 != 2
    groups = array.each_slice(5).to_a
  else
    groups = array.each_slice(4).to_a
  end
end


#Refactored Method to Print Groups
def print_groups(groups)
  counter = 1
  groups.each do |group|
    p "Group#{counter.to_s}: #{group.join(", ")}"
    counter = counter.to_i + 1
  end
end

chorus_frogs = ['Jack Abernethy', 'Mohammad Amin', 'Zollie Barnes', 'Reuben Brandt', 'Dana Breen', 'Breton Burnett', 'Saundra Vanessa Castaneda', 'Luis De Castro', 'Nicolette Chambers', 'Kerry Choy', 'Nick Davies', 'KB DiAngelo', 'Adrian Diaz', 'David Diaz', 'Bob Dorff', 'Michael Du', 'Paul Dynowski', 'Jenna Espezua', 'Sean Fleming', 'Marcel Haesok', 'Albert Hahn', 'Arthur Head', 'Jonathan Huang', 'Thomas Huang', 'Alex Jamar', 'Kevin Jones', 'Steven Jones', 'Coleby Kent', 'Caroline Kenworthy', 'Calvin Lang', 'Yi Lu', 'David Ma', 'Sean Massih', 'Tom McHenry', 'Alex Mitzman', 'Lydia Nash', 'Brenda Nguyen', 'Matthew Oppenheimer', 'Mason Pierce', 'Joe Plonsker', 'Mira Scarvalone', 'Joseph Scott', 'Chris Shahin', 'Benjamin Shpringer', 'Lindsey Stevenson', 'Phil Thomas', 'Gary Tso', 'Ting Wang', 'Monique Williamson', 'Regina Wong', 'Hanah Yendler']


accountability_groups = acct_groups(chorus_frogs)
print_groups(accountability_groups)

#Reflection
=begin
What was the most interesting and most difficult part of this challenge?
The most interesting part of the challenge was creating a method to print the groups to test
my acct_groups method.  I had to change the code for the print_groups method several times until
it was printing the groups as a string with commas between each name and incrementing the
group number. The most difficult part of this challenge was figuring out the conditional
statements I needed to use so that each group had 4 or 5 names and no groups had
less than 3 names.


Do you feel you are improving in your ability to write pseudocode and break the problem down?
I feel that I am improving in my ability to write pseudocode using best practices and breaking
the problem down into small steps but I'm still struggling with identifying the conditional
statements I need to create an initial solution that's successful.


Was your approach for automating this task a good solution? What could have made it even better?
I think I ended up with a good solution by creating two methods: one method to create the random
groups and the other method to print the groups. Possibly what could have made it better would be
to use use a hash to store each group of names with the hash key as the group number.  Then I
could use the print_groups method to iterate through each key-value pair to print the groups.


What data structure did you decide to store the accountability groups in and why?
I decided to store the accountability groups in an array of arrays because it allowed me to
use the .each_slice method to take sections from the original array and store it in a
new variable, called "groups", that listed the names of people in each group.  Then I created
a separate method, print_groups, to print the names of people in each group by calling the
acct_groups method and storing it in the variable accountability_groups. I was able to print
the groups by calling the print_groups method with the variable accountability_groups.


What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
In refactoring my initial solution I realized I could use a method to print the return value of
the acct_groups method and how to ensure that my code was DRY.  A new Ruby method I learned was the
destructive #shuffle! method that allows you to rearrange the names in place each time the method is
called.

=end