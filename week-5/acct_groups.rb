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


#Method to Print Groups
def print_groups(groups)
  counter = 1
  groups.each do |group|
    p "Group" + counter.to_s + ": #{group}"
    counter = counter.to_i + 1
  end
end

chorus_frogs = ['Jack Abernethy', 'Mohammad Amin', 'Zollie Barnes', 'Reuben Brandt', 'Dana Breen', 'Breton Burnett', 'Saundra Vanessa Castaneda', 'Luis De Castro', 'Nicolette Chambers', 'Kerry Choy', 'Nick Davies', 'KB DiAngelo', 'Adrian Diaz', 'David Diaz', 'Bob Dorff', 'Michael Du', 'Paul Dynowski', 'Jenna Espezua', 'Sean Fleming', 'Marcel Haesok', 'Albert Hahn', 'Arthur Head', 'Jonathan Huang', 'Thomas Huang', 'Alex Jamar', 'Kevin Jones', 'Steven Jones', 'Coleby Kent', 'Caroline Kenworthy', 'Calvin Lang', 'Yi Lu', 'David Ma', 'Sean Massih', 'Tom McHenry', 'Alex Mitzman', 'Lydia Nash', 'Brenda Nguyen', 'Matthew Oppenheimer', 'Mason Pierce', 'Joe Plonsker', 'Mira Scarvalone', 'Joseph Scott', 'Chris Shahin', 'Benjamin Shpringer', 'Lindsey Stevenson', 'Phil Thomas', 'Gary Tso', 'Ting Wang', 'Monique Williamson', 'Regina Wong', 'Hanah Yendler']


accountability_groups = acct_groups(chorus_frogs)
print_groups(accountability_groups)

#Reflection
=begin
What was the most interesting and most difficult part of this challenge?


Do you feel you are improving in your ability to write pseudocode and break the problem down?


Was your approach for automating this task a good solution? What could have made it even better?


What data structure did you decide to store the accountability groups in and why?


What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?


=end