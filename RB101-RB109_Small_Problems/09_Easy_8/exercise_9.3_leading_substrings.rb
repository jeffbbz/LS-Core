# Small Problems > Easy 8 > Leading Substrings

# String#chars array & Enumerable#each_with_index

def leading_substrings(string)
  substr_arr = []
  string.chars.each_with_index do |_, index|
    substr_arr << string[0..index]
  end
  substr_arr
end

# keep string with String#each_char and Enumerator#with_index

def leading_substrings(string)
  substr_arr = []
  string.each_char.with_index do |_, index|
    substr_arr << string[0..index]
  end
  substr_arr
end

# keep string with String#each_char

def leading_substrings(string)
  substr_arr = []
  new_string = ""
  string.each_char do |char|
    substr_arr << new_string += char
  end
  substr_arr
end

# keep string with String#each_char and Enumerator#with_object

def leading_substrings(string)
  new_string = ""
  string.each_char.with_object([]) do |char, substr_arr|
    substr_arr << new_string += char
  end
end

# brute force while loop

def leading_substrings(string)
  substr_arr = []
  index = 0

  while index < string.length
    substr_arr << string[0..index]
    index += 1
  end
  substr_arr
end

# brute force until loop with different break condition

def leading_substrings(string)
  substr_arr = []
  index = 0

  until substr_arr[-1] == string
    substr_arr << string[0..index]
    index += 1
  end
  substr_arr
end

# with Intger#times

def leading_substrings(string)
  substr_arr = []

  string.length.times do |i|
    substr_arr << string[0..i]
  end
  substr_arr
end

# or Integer#times and += strings

def leading_substrings(string)
  new_string = ''
  substr_arr = []

  string.length.times do |i|
    new_string += string[i]
    substr_arr << new_string
  end
  substr_arr
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']