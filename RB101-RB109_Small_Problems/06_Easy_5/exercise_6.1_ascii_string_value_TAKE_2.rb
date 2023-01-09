#Exercise 5.1

def ascii_value(string)
  string.chars.map { |char| char.ord }.sum
  # Also string.codepoints.sum would work and be the simplest answer
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0

# Further Exploration

char = 'a'
p char.ord.chr == char

# If called on a longer (not 1 char string) string it will only return the first char in the string and therefore be false