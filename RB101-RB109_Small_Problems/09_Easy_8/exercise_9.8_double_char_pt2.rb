# Small Problems > Easy 7 > Double Char (Part 2)

# array of chars with map and regex

def double_consonants(string)
  string.chars.map do |char|
    char =~ /[aeiou\d\s[:punct:]]/i ? char : char * 2 
  end.join
end

# string not array with each_char and with_object and regex

def double_consonants(string)
  string.each_char.with_object("") do |char, str|
    char =~ /[aeiou\d\s[:punct:]]/i ? str << char : str << char * 2
  end
end

# LS solution: string with each_char and with_object and global 
# variable referencing array of consonants

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string.each_char.with_object("") do |char, str|
    str << char
    str << char if CONSONANTS.include?(char.downcase)
  end
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""