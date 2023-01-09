# Small Problems > Medium 1 > Rotation (Part 1)

def rotate_array(array)
  array = array.dup
  array.push(array.first).shift
  array
end

def rotate_array(array)
  array.reverse_each.with_object([]) do |element, arr| 
    element == array.first ? arr << element : arr.prepend(element)
  end
end

def rotate_array(array)
  array[1..-1] << array[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further Exploration: Rotate String

def rotate_string(string)
  string[1..-1] << string[0]
end

def rotate_string(string)
  string.chars.reverse_each.with_object([]) do |char, arr| 
    string.start_with?(char) ? arr << char : arr.prepend(char)
  end.join
end

p rotate_string("haters") #== "atersh"
string = "graph"
p rotate_string(string) == "raphg"   # => true
p string == "graph"                 # => true

# Further Exploration: Rotate Integers

def rotate_string(string)
  string[1..-1] << string[0]
end

def rotate_number(number)
  rotate_string(number.to_s).to_i
end

#or without another rotate method

def rotate_number(number)
  number.digits.each_with_object([]) do |digit, arr| 
    digit == number.digits[-1] ? arr << digit : arr.prepend(digit)
  end.join.to_i
end

p rotate_number(34567) #== 45673
number = 4632
p rotate_number(number) == 6324   # => true
p number == 4632                 # => true