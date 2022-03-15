# Exercise 6.1

def ascii_value(string)
  value = string.chars.map { |char| char.ord }
  value.sum
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')