# Small Problems > Easy 8 > All Substrings

def leading_substrings(string, start_index)
  substr_arr = []
  string.each_char.with_index do |_, end_index|
    substr_arr << string[start_index..end_index]
  end
  substr_arr
end

def substrings(string)
  new_arr = []
  string.chars.each_with_index do |_, index|
    new_arr << leading_substrings(string, index)
  end
  new_arr.flatten.delete_if { |el| el == "" }
end

# or

def leading_substrings(string, char)
  substr_arr = []
  string.each_char.with_index do |_, end_index|
    substr_arr << string[string.index(char)..end_index]
  end
  substr_arr
end

def substrings(string)
  string.chars.each_with_object([]) do |char, arr| 
    arr << leading_substrings(string, char)
  end.flatten.delete_if { |el| el == "" }
end

# or

def leading_substrings(string, char)
  substr_arr = []
  string.each_char.with_index do |_, index|
    substr_arr << string[string.index(char), (string.length - index)]
  end
  substr_arr
end

def substrings(string)
  string.chars.each_with_object([]) do |char, arr| 
    arr << leading_substrings(string, char)
  end.flatten.uniq.sort
end

# or

def leading_substrings(string, char, arr)
  string.each_char.with_index do |_, index|
    element = string[string.index(char), (string.length - index)]
    arr << element unless arr.last == element
  end
  arr
end

def substrings(string)
  string.chars.each_with_object([]) do |char, arr| 
    leading_substrings(string, char, arr)
  end.sort
end

# or single method with Integer#times and Enumerator#with_object and
# nested Integer#times and #each

# def substrings(string)
#   string.size.times.with_object([]) do |i, arr| 
#     (string.size - i).times.each do |j| 
#       arr << string[i, j + 1]
#     end
#   end
# end

p substrings('abcde') #== [
  #'a', 'ab', 'abc', 'abcd', 'abcde',
  #'b', 'bc', 'bcd', 'bcde',
  #'c', 'cd', 'cde',
  #'d', 'de',
  #'e'
#]