# I worked on this challenge with Joe Plonsker.

=begin # We want to input three sides of a triangle and have our output
be true and describe the type of triangle or false.

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a==0 || b==0 || c==0
    return false
  elsif 0.01..100.0 && a==b && a==c && c==b
    return true
  elsif ((a <= (b+c)) || (b <= (a+c)) || (c <= (a+b)) )
    return true
##elsif a+b > c || a+c > b || b+c > a
##  return true
##elsif a+b > c && a+c > b && b+c > a
##  return true
  end
end

We tried multiple variations on the elsif statements
but ultimately realized one of the last elsif conditions
was the only condition needed.
=end
# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if (a+b> c) && (b+c>a) && (c+a > b)
    return true
  else
    return false
  end
end

