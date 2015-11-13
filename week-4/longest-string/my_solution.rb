# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  if (list_of_words.length == 0)
    return nil
  else
    long_string = list_of_words[0]
    list_of_words.each do |word|
      if (word.length > long_string.length)
        long_string = word
      end
    end
    return long_string
  end
end