# Small Problems > Medium 1 > Diamonds!

# First Try

# def diamond(stars)
#   1.upto(stars - 1) do |number|
#     next if number.even?
#     spaces = " " * ((stars - number) / 2)
#     puts spaces + ("*" * number) + spaces
#   end
#   stars.downto(1) do |number|
#     next if number.even?
#     spaces = " " * ((stars - number) / 2)
#     puts spaces + ("*" * number) + spaces
#   end
# end

# Refactor 1

# def diamond(stars)
#   1.upto(stars - 1) do |number|
#     next if number.even?
#     puts ("*" * number).center(stars)
#   end
#   stars.downto(1) do |number|
#     next if number.even?
#     puts ("*" * number).center(stars)
#   end
# end

# Refactor 2 with helper method

def print_shape(stars, number)
  puts ("*" * number).center(stars) if number.odd?
end

def diamond(stars)
  1.upto(stars - 1) { |number| print_shape(stars, number) }
  stars.downto(1) { |number| print_shape(stars, number) }
end

# Refactor 3 without helper method

def diamond(stars)
  1.upto(stars - 1) do |number|
    puts ("*" * number).center(stars) if number.odd?
  end
  stars.downto(1) do |number|
    puts ("*" * number).center(stars) if number.odd?
  end
end

diamond(1)
diamond(3)
diamond(9)

# Further Exploration Diamond Outline

def print_shape(size, number)
  if number.odd?
    outer_spaces = " " * ((size - number) / 2)
    inside = "*"
    inside += " " * (number - 2) + "*" unless number == 1
    puts outer_spaces + inside + outer_spaces
  end
end

def diamond_outline(size)
  1.upto(size - 1) { |number| print_shape(size, number) }
  size.downto(1) { |number| print_shape(size, number) }
end

diamond_outline(5)
diamond_outline(9)
diamond_outline(15)
