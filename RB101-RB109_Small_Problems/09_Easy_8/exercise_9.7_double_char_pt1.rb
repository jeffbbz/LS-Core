# Small Problems > Easy 7 > Double Char (Part 1)

# with chars array and map

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

# or without array with each_char and with_object

def repeater(string)
  string.each_char.with_object("") { |char, str| str << char * 2 }
end

# or without an array with times (BUT THIS MUTATES THE ARGUMENT STRING)

def repeater(string)
  string.length.times { |i| string.insert(i + i, string[i + i]) }
  string
end

# with nested chars array with zip

def repeater(string)
  string.chars.zip(string.chars).flatten.join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
